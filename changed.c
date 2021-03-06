/* Copyright 1993-97  Luis Fernandes <elf@ee.ryerson.ca> 
 *
 * Permission to use, copy, hack, and distribute this software and its
 * documentation for any purpose and without fee is hereby granted,
 * provided that the above copyright notice appear in all copies and
 * that both that copyright notice and this permission notice appear
 * in supporting documentation.  This application is presented as is
 * without any implied or written warranty.
 */

/*
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 * 
 */
/* changed.c: utility function for checking the times of 2 files
 * $Id: changed.c,v 1.4 1997/06/02 11:28:58 elf Exp $ 
 */
#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <errno.h>
#include <X11/Intrinsic.h>

#include "main.h"

extern app_res_t app_res;

/* motdChanged() returns time_t of the motd file: if modification time
 * of motd is greater than the modification time of time-stamp file;
 * else it returns 0.
 * */

time_t 
motdChanged(char *motd, char *stamp)
{
  struct stat motdstat, tsstat;

  stat(motd, &motdstat);

  if(stat(stamp, &tsstat))
    {
     extern int errno;

      if(errno==ENOENT)			/* file does not exist if 1st time */
		return(motdstat.st_mtime);
    }

  if(motdstat.st_mtime <= tsstat.st_mtime) /*Butch Deal*/
    return((time_t) 0);

  if(!motdstat.st_size && !app_res.always)
    return((time_t) 0);

  return(motdstat.st_mtime);
}

