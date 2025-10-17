include("InstanceManager");
function OnMultiplayerChat( fromPlayer, toPlayer, text, eTargetType )
    if (string.lower(text) == "/output" or string.lower(text) == "output") then
		Network.SendChat("[Icon_CheckmarkBlue]",-2,-1);
        print("---------------------------");
        print(text);
		return
	end
end
OnMultiplayerChat()
function Initialize()

	Events.MultiplayerChat:Add( OnMultiplayerChat )

end
Initialize()