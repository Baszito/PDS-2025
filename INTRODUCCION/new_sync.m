## Copyright (C) 2025 juancito
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} new_sync (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: juancito <juancito@L4-FUR10S4>
## Created: 2025-03-31

function [x,t] = new_sync(tini,tfin,fm,fs)
  clc;
  clear;
  T = 1/fm;##Paso
  t  = -tini:T:tfin-T;
  for i=1:length(t)
    if(t(i) == 0)
      x(i) = 1;
    else
      x(i) = sin(2*pi*fs*t(i))/t(i);
    endif
  endfor
endfunction
