
-- Copyright (C) 2001 Bill Billowitch.

-- Some of the work to develop this test suite was done with Air Force
-- support.  The Air Force and Bill Billowitch assume no
-- responsibilities for this software.

-- This file is part of VESTs (Vhdl tESTs).

-- VESTs is free software; you can redistribute it and/or modify it
-- under the terms of the GNU General Public License as published by the
-- Free Software Foundation; either version 2 of the License, or (at
-- your option) any later version. 

-- VESTs is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
-- FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
-- for more details. 

-- You should have received a copy of the GNU General Public License
-- along with VESTs; if not, write to the Free Software Foundation,
-- Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 

-- ---------------------------------------------------------------------
--
-- $Id: tc3097.vhd,v 1.2 2001-10-26 16:30:25 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

ENTITY c05s01b00x00p09n02i03097ent IS
END c05s01b00x00p09n02i03097ent;

ARCHITECTURE c05s01b00x00p09n02i03097arch OF c05s01b00x00p09n02i03097ent IS
  attribute    ill1   : real;
  signal       s1, s2   : integer;
  attribute    ill1 of s1, s2: constant is 10.0; -- Failure_here
BEGIN
  TESTING: PROCESS
  BEGIN
    assert FALSE
      report "***FAILED TEST: c05s01b00x00p09n02i03097 - The class of those names used in the entity name list in the entity specification in an attribute specification is not the same as that denoted by the entity class."
      severity ERROR;
    wait;
  END PROCESS TESTING;

END c05s01b00x00p09n02i03097arch;
