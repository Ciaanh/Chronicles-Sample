local ADDON_NAME, private = ...
private.addon_name = "Chronicles-Data"
private.Chronicles = _G.Chronicles or private.Chronicles or {}

local ChroniclesData = LibStub("AceAddon-3.0"):NewAddon(private.addon_name)

function ChroniclesData:OnInitialize()
    if (ChroniclesPluginData.Register ~= nil) then
        ChroniclesPluginData.Register()
    else
        print("|cffff0000Error:|r ChroniclesPluginData.Register function not found for ", private.addon_name)
    end
end
