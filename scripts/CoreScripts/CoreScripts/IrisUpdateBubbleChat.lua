local CoreGui = game:GetService("CoreGui")

-- Temporary code to set the BillboardGui AlwaysBeOnTop to true while we wait for Chrome
local experienceChat = CoreGui:WaitForChild("ExperienceChat")
local bubbleChat = experienceChat:WaitForChild("bubbleChat")
bubbleChat.ChildAdded:Wait()
local bubbleChatBillboardGui = bubbleChat:GetChildren()[1] :: BillboardGui
bubbleChatBillboardGui.AlwaysOnTop = true
