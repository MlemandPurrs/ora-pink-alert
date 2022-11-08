
--supports up until 62 player, thats the softmax OpenRA can handle atm
WorldLoadedIndexPlayers = function()
	neutral = Player.GetPlayer("Neutral")
	mp0 = Player.GetPlayer("Multi0")
	mp1 = Player.GetPlayer("Multi1")
	mp2 = Player.GetPlayer("Multi2")
	mp3 = Player.GetPlayer("Multi3")
	mp4 = Player.GetPlayer("Multi4")
	mp5 = Player.GetPlayer("Multi5")
	mp6 = Player.GetPlayer("Multi6")
	mp7 = Player.GetPlayer("Multi7")
	mp8 = Player.GetPlayer("Multi8")
	mp9 = Player.GetPlayer("Multi9")
	mp10 = Player.GetPlayer("Multi10")
	mp11 = Player.GetPlayer("Multi11")
	mp12 = Player.GetPlayer("Multi12")
	mp13 = Player.GetPlayer("Multi13")
	mp14 = Player.GetPlayer("Multi14")
	mp15 = Player.GetPlayer("Multi15")
	mp16 = Player.GetPlayer("Multi16")
	mp17 = Player.GetPlayer("Multi17")  
	mp18 = Player.GetPlayer("Multi18")
	mp19 = Player.GetPlayer("Multi19")
	mp20 = Player.GetPlayer("Multi20")  
	mp21 = Player.GetPlayer("Multi21")
	mp22 = Player.GetPlayer("Multi22")
	mp23 = Player.GetPlayer("Multi23")
	mp24 = Player.GetPlayer("Multi24")
	mp25 = Player.GetPlayer("Multi25")
	mp26 = Player.GetPlayer("Multi26")
	mp27 = Player.GetPlayer("Multi27")
	mp28 = Player.GetPlayer("Multi28")
	mp29 = Player.GetPlayer("Multi29")
	mp30 = Player.GetPlayer("Multi30")  
	mp31 = Player.GetPlayer("Multi31")
	mp32 = Player.GetPlayer("Multi32")
	mp33 = Player.GetPlayer("Multi33")
	mp34 = Player.GetPlayer("Multi34")
	mp35 = Player.GetPlayer("Multi35")
	mp36 = Player.GetPlayer("Multi36")
	mp37 = Player.GetPlayer("Multi37")
	mp38 = Player.GetPlayer("Multi38")
	mp39 = Player.GetPlayer("Multi39")
	mp40 = Player.GetPlayer("Multi40")
	mp41 = Player.GetPlayer("Multi41")
	mp42 = Player.GetPlayer("Multi42")
	mp43 = Player.GetPlayer("Multi43")
	mp44 = Player.GetPlayer("Multi44")
	mp45 = Player.GetPlayer("Multi45")
	mp46 = Player.GetPlayer("Multi46")
	mp47 = Player.GetPlayer("Multi47")
	mp48 = Player.GetPlayer("Multi48")
	mp49 = Player.GetPlayer("Multi49")
	mp50 = Player.GetPlayer("Multi50")
	mp51 = Player.GetPlayer("Multi51")
	mp52 = Player.GetPlayer("Multi52")
	mp53 = Player.GetPlayer("Multi53")
	mp54 = Player.GetPlayer("Multi54")
	mp55 = Player.GetPlayer("Multi55")
	mp56 = Player.GetPlayer("Multi56")
	mp57 = Player.GetPlayer("Multi57")
	mp58 = Player.GetPlayer("Multi58")
	mp59 = Player.GetPlayer("Multi59")
	mp60 = Player.GetPlayer("Multi60")
	mp61 = Player.GetPlayer("Multi61")
  
	players = { mp0, mp1, mp2, mp3, mp4, mp5, mp6, mp7, mp8, mp9, mp10, mp11, mp12, mp13, mp14, mp15, mp16, mp17, mp18, mp19, mp20, mp21, mp22, mp23, mp24, mp25, mp26, mp27, mp28, mp29, mp30, mp31, mp32, mp33, mp34, mp35, mp36, mp37, mp38, mp39, mp40, mp41, mp42, mp43, mp44, mp45, mp46, mp47, mp48, mp49, mp50, mp51, mp52, mp53, mp54, mp55, mp56, mp57, mp58, mp59, mp60, mp61 }

end

WorldLoaded = function()
	if Map.LobbyOption("refineryoptions") == "vanilla" then
		WorldLoadedIndexPlayers()
		for i, player in pairs(players) 
			do
				player.GrantCondition("vanilla-refinery")

				--Media.DisplayMessage("Granted 'vanilla-refinery' condition", "Options", HSLColor.Red)
			end
		end
	if Map.LobbyOption("refineryoptions") == "evolved" then
		WorldLoadedIndexPlayers()
		for i, player in pairs(players) 
			do
				player.GrantCondition("evolved-refinery")

				--Media.DisplayMessage("Granted 'evolved-refinery' condition", "Options", HSLColor.Red)
			end
		end
	if Map.LobbyOption("refineryoptions") == "xperimental" then
		WorldLoadedIndexPlayers()
		for i, player in pairs(players) 
			do
				player.GrantCondition("xperimental-refinery")

				--Media.DisplayMessage("Granted 'xperimental-refinery' condition", "Options", HSLColor.Red)
			end
		end
	if Map.LobbyOption("refineryoptions") == "ercc" then
		WorldLoadedIndexPlayers()
		for i, player in pairs(players) 
			do
				player.GrantCondition("ercc-refinery")

				--Media.DisplayMessage("Granted 'ercc-refinery' condition", "Options", HSLColor.Red)
			end
		end
	if Map.LobbyOption("dynamictechlevel") == "enabled" then
		WorldLoadedIndexPlayers()
	elseif Map.LobbyOption("dynamictechlevel") == "disabled" then
		WorldLoadedIndexPlayers()
		for i, player in pairs(players) 
			do
				player.GrantCondition("no-dynamic-tech")

				--Media.DisplayMessage("Granted 'no-dynamic-tech' condition", "Options", HSLColor.Red)
			end
		end
	end

Tick = function()
	if Map.LobbyOption("dynamictechlevel") == "enabled" then
		TickScienceLevels()
    end
end
