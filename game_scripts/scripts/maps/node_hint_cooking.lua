-- Copyright (C) 2007, 2010 - Bit-Blot
--
-- This file is part of Aquaria.
--
-- Aquaria is free software; you can redistribute it and/or
-- modify it under the terms of the GNU General Public License
-- as published by the Free Software Foundation; either version 2
-- of the License, or (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
--
-- See the GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to the Free Software
-- Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

if not v then v = {} end
if not AQUARIA_VERSION then dofile("scripts/entities/entityinclude.lua") end

v.n = 0

function init(me)
end

function update(me, dt)
	v.n = getNaija()
	if isFlag(FLAG_HINT_COOKING, 0) then
		if node_isEntityIn(me, getNaija()) then
			--setControlHint(getStringBank(11), 0, 0, 0, 8)
			entity_idle(v.n)
			if entity_isfh(v.n) then
				entity_fh(v.n)
			end
			watch(3.5)
			showInGameMenu(0,0,MENUPAGE_FOOD)
			setFlag(FLAG_HINT_COOKING, 1)
		end
	end
end
