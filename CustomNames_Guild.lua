local lib = LibStub("CustomNames")
local function updateGuildRoster(self,...)
	local frame = ...
	local name = frame.NameFrame.Name:GetText()
        if name then
			local customName = lib.Get(name)
		if customName and customName ~= name then
			frame.NameFrame.Name:SetText(customName)
			frame.NameFrame.RankIcon:ClearAllPoints();
			frame.NameFrame.RankIcon:SetPoint("LEFT", frame.NameFrame.Name, "LEFT", frame.NameFrame.Name:GetStringWidth(), 0);
        end
	end
end
ScrollUtil.AddInitializedFrameCallback(CommunitiesFrame.MemberList.ScrollBox,updateGuildRoster) 