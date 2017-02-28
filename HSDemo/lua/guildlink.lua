local addonName, addonTable = ...
local L = addonTable.L

UnitPopupButtons["HSDSc"]={text = "Completed Survey", dist = 0};
table.insert(UnitPopupMenus["GUILD"], #(UnitPopupMenus["GUILD"])-1, "HSDSc");
table.insert(UnitPopupMenus["GUILD_OFFLINE"], #(UnitPopupMenus["GUILD_OFFLINE"])-1, "HSDSc");

local function Addit(xname)
	for index = 1, GetNumGuildMembers() do		
		local fullName, rank, rankIndex, level, class, zone, note, officernote, online, status, classFileName, achievementPoints, achievementRank, isMobile, canSoR, reputation = GetGuildRosterInfo(index)
		
		if fullName == xname then
			GuildRosterSetOfficerNote(index, officernote .. " HSDSc")
		end
				
	end
end

local CURRENT_NAME, CURRENT_SERVER

hooksecurefunc("UnitPopup_ShowMenu", function(self, which)
    if which == "FRIEND" and UIDROPDOWNMENU_MENU_LEVEL == 1 then
        CURRENT_NAME, CURRENT_SERVER = self.name, self.server
    end
end)

hooksecurefunc("UnitPopup_OnClick", function(self)
    local name, server = UIDROPDOWNMENU_INIT_MENU.name, UIDROPDOWNMENU_INIT_MENU.server
	local fullname = name;
    if name == CURRENT_NAME and not server then server = CURRENT_SERVER end
	fullname = name.."-"..server;
	if self.value == "HSDSc" then
		Addit(fullname);
	end
end)
