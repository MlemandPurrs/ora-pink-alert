--[[
   Copyright 2007-2020 The OpenRA Developers (see AUTHORS)
   This file is part of OpenRA, which is free software. It is made
   available to you under the terms of the GNU General Public License
   as published by the Free Software Foundation, either version 3 of
   the License, or (at your option) any later version. For more
   information, see COPYING.
]]

if Map.LobbyOption("huskscontrol") == "techbuilding" then
	Utils.Do(Map.ActorsInWorld, function(actor)
	  if actor.Type == "Player" then
		actor.GrantCondition("techbuilding-husks-on")
	  end
	end)
elseif Map.LobbyOption("huskscontrol") == "structures" then
	Utils.Do(Map.ActorsInWorld, function(actor)
	  if actor.Type == "Player" then
		actor.GrantCondition("techbuilding-husks-on")
	  end
	  if actor.Type == "Player" then
		actor.GrantCondition("building-husks-on")
	  end
	end)
elseif Map.LobbyOption("huskscontrol") == "vehicles" then
	Utils.Do(Map.ActorsInWorld, function(actor)
	  if actor.Type == "Player" then
		actor.GrantCondition("techbuilding-husks-on")
	  end
	  if actor.Type == "Player" then
		actor.GrantCondition("building-husks-on")
	  end
	  if actor.Type == "Player" then
		actor.GrantCondition("vehicle-husks-on")
	  end
	end)
end