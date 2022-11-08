--[[
   Copyright 2007-2018 The OpenRA Developers (see AUTHORS)
   This file is part of OpenRA, which is free software. It is made
   available to you under the terms of the GNU General Public License
   as published by the Free Software Foundation, either version 3 of
   the License, or (at your option) any later version. For more
   information, see COPYING.
]]

Levels =
{
	Multi0 = 0,
	Multi1 = 0,
	Multi2 = 0,
	Multi3 = 0,
	Multi4 = 0,
	Multi5 = 0,
	Multi6 = 0,
	Multi7 = 0,
	Multi8 = 0,
	Multi9 = 0,
	Multi10 = 0,
	Multi11 = 0,
	Multi12 = 0,
	Multi13 = 0,
	Multi14 = 0,
	Multi15 = 0,
	Multi16 = 0,
	Multi17 = 0,
	Multi18 = 0,
	Multi19 = 0,
	Multi20 = 0,
	Multi21 = 0,
	Multi22 = 0,
	Multi23 = 0,
	Multi24 = 0,
	Multi25 = 0,
	Multi26 = 0,
	Multi27 = 0,
	Multi28 = 0,
	Multi29 = 0,
	Multi30 = 0,
	Multi31 = 0,
	Multi32 = 0,
	Multi33 = 0,
	Multi34 = 0,
	Multi35 = 0,
	Multi36 = 0,
	Multi37 = 0,
	Multi38 = 0,
	Multi39 = 0,
	Multi40 = 0,
	Multi41 = 0,
	Multi42 = 0,
	Multi43 = 0,
	Multi44 = 0,
	Multi45 = 0,
	Multi46 = 0,
	Multi47 = 0,
	Multi48 = 0,
	Multi49 = 0,
	Multi50 = 0,
	Multi51 = 0,
	Multi52 = 0,
	Multi53 = 0,
	Multi54 = 0,
	Multi55 = 0,
	Multi56 = 0,
	Multi57 = 0,
	Multi58 = 0,
	Multi59 = 0,
	Multi60 = 0,
	Multi61 = 0
}

Ranks = { "1", "2", "3", "4", "5", "6", "7" }
RankXPs = { 0, 800, 2400, 4800, 8000, 12000, 16800 }
--[[ RankXPs = { 0, 800, 1600, 2400, 3200, 4000, 4800 } ]]

TickScienceLevels = function()
	for _,player in pairs(players) do
		if player.IsLocalPlayer then
			if Levels[player.InternalName] < 6 then
				UserInterface.SetMissionText("Current Tech Level: " .. Ranks[Levels[player.InternalName] + 1] .. "\nNext Tech Level: " .. player.Experience - RankXPs[Levels[player.InternalName] + 1] .. "/" .. RankXPs[Levels[player.InternalName] + 2] - RankXPs[Levels[player.InternalName] + 1] .. "", HSLColor.White)
			else
				UserInterface.SetMissionText("Current Tech Level: " .. Ranks[Levels[player.InternalName] + 1] .. "\nMaximum Tech Level ", HSLColor.White)
			end
		end

		if player.Experience >= RankXPs[2] and not (Levels[player.InternalName] > 0) then
			Levels[player.InternalName] = Levels[player.InternalName] + 1

			Actor.Create("techlevel.2", true, { Owner = player })
		end

		if player.Experience >= RankXPs[3] and not (Levels[player.InternalName] > 1) then
			Levels[player.InternalName] = Levels[player.InternalName] + 1

			Actor.Create("techlevel.3", true, { Owner = player })
		end

		if player.Experience >= RankXPs[4] and not (Levels[player.InternalName] > 2) then
			Levels[player.InternalName] = Levels[player.InternalName] + 1

			Actor.Create("techlevel.4", true, { Owner = player })
		end

		if player.Experience >= RankXPs[5] and not (Levels[player.InternalName] > 3) then
			Levels[player.InternalName] = Levels[player.InternalName] + 1

			Actor.Create("techlevel.5", true, { Owner = player })
		end

		if player.Experience >= RankXPs[6] and not (Levels[player.InternalName] > 4) then
			Levels[player.InternalName] = Levels[player.InternalName] + 1

			Actor.Create("techlevel.6", true, { Owner = player })
		end

		if player.Experience >= RankXPs[7] and not (Levels[player.InternalName] > 5) then
			Levels[player.InternalName] = Levels[player.InternalName] + 1

			Actor.Create("techlevel.7", true, { Owner = player })
		end
	end
end
