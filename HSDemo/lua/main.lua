function onload(self)
    print(GetAddOnMetadata("HSDemo", "Title") .. " v" .. GetAddOnMetadata("HSDemo", "Version") .. " loaded");
	HSDemo:Show();
end

function checksurvey()
	for index = 1, GetNumGuildMembers() do		
		local fullName, rank, rankIndex, level, class, zone, note, officernote, online, status, classFileName, achievementPoints, achievementRank, isMobile, canSoR, reputation = GetGuildRosterInfo(index)
						
		if online==true then					
			if string.match(officernote, "HSDSc") then					
			else
				print (fullName, "Has not completed the survey.")		
			end
		end	
	end
end

function gulagGC()
	for index = 1, GetNumGuildMembers() do		
		local fullName, rank, rankIndex, level, class, zone, note, officernote, online, status, classFileName, achievementPoints, achievementRank, isMobile, canSoR, reputation = GetGuildRosterInfo(index)
						
		if online==true then					
			if string.match(officernote, "HSDSc") then					
			else
				SendChatMessage(fullName.." Has not completed the survey.","GUILD",nil,"GUILD")
			end
		end	
	end
end

function gulagT()
	for index = 1, GetNumGuildMembers() do		
		local fullName, rank, rankIndex, level, class, zone, note, officernote, online, status, classFileName, achievementPoints, achievementRank, isMobile, canSoR, reputation = GetGuildRosterInfo(index)
						
		if online==true then					
			if string.match(officernote, "HSDSc") then					
			else
				SendChatMessage("Can you go and fill out the survey please. hexualsarassment.com - Top Right Corner","WHISPER",nil,fullName)
			end
		end	
	end
end

function recruitT()
	SendChatMessage("<Hexual Sarassment> is 10/10N, 8/10H and looking for experienced DPS and Heals to fill out our core group. Raid nights are Tue/Wed/Fri at 8 Server. Mythic+ and PvP run nightly. PST for info.","CHANNEL",nil,GetChannelName("Trade - City"))
end

function remindGC()
	SendChatMessage("Please remember to fill out the survey on the guild website, hexualsarassment.com - It takes 2 minutes.","GUILD",nil,"GUILD")
end


