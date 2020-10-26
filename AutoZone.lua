-- AutoZone.lua
-- Version 1.0.0:	Initial version.

local function OnEvent(self, event)
	if WorldMapFrame:IsVisible() then
		WorldMapFrame:SetMapID(MapUtil.GetDisplayableMapForPlayer())
	end
end

local f = CreateFrame("Frame")
f:RegisterEvent("ZONE_CHANGED_NEW_AREA")
f:SetScript("OnEvent", OnEvent)
