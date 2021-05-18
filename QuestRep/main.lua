local addonName, NS = ...

local frame = CreateFrame("FRAME", "MainFrame");
frame:RegisterEvent("QUEST_PROGRESS");
frame:RegisterEvent("QUEST_DETAIL");
-- frame:RegisterEvent("UNIT_QUEST_LOG_CHANGED");
-- frame:RegisterEvent("QUEST_ITEM_UPDATE");
-- frame:RegisterEvent("QUEST_LOG_UPDATE");
local function eventHandler(self, event, ...)
 local questID = GetQuestID();
-- print(event);
 print("Quest ID: " .. questID);
 if NS.quest_rep_db[questID]
 then
  for _, q in ipairs(NS.quest_rep_db[questID]) do
    print(q[1] .. ": " .. q[2])
  end
 else
 print("no reputation")
 end
end
frame:SetScript("OnEvent", eventHandler);
