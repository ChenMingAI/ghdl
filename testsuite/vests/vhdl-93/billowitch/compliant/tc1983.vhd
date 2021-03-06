
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
-- $Id: tc1983.vhd,v 1.2 2001-10-26 16:29:44 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

ENTITY c07s02b02x00p02n01i01983ent IS
  type color is (red, green, blue);
  constant azure : color := blue;
  constant first : color := color'low;
END c07s02b02x00p02n01i01983ent;

ARCHITECTURE c07s02b02x00p02n01i01983arch OF c07s02b02x00p02n01i01983ent IS

BEGIN
  TESTING: PROCESS
    variable A1, A2   : color;
    variable A3    : color := blue;
    alias AA1 :color is A1;
  BEGIN

    AA1:= first;
    A2 := color'succ(A1);

    assert NOT(     A2 = green   and
                    green = A2   and
                    A2 > AA1   and
                    red >= A1   and
                    A1 >= red   and
                    A3 <= blue   and
                    blue <= A3   and
                    A1 < green   and
                    green < A3   and
                    red < azure    )
      report "***PASSED TEST: c07s02b02x00p02n01i01983"
      severity NOTE;
    assert (     A2 = green   and
                 green = A2   and
                 A2 > AA1   and
                 red >= A1   and
                 A1 >= red   and
                 A3 <= blue   and
                 blue <= A3   and
                 A1 < green   and
                 green < A3   and
                 red < azure    )
      report "***FAILED TEST: c07s02b02x00p02n01i01983 - Relational operators truth table test for data type of Enumeration failed."
      severity ERROR;
    wait;
  END PROCESS TESTING;

END c07s02b02x00p02n01i01983arch;
