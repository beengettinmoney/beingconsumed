--change to ur liking.
--i would just leave everything on for max power
getgenv().autogetdemCrates = true
getgenv().autogetBOOBOOBOOSTS = true
getgenv().autoMiningBoost = true
getgenv().autouseBOOBOOBOOSTS = true
getgenv().autoovercock = true
spawn(function()
while autogetdemCrates == true do
wait(1)
local args = {
    [1] = true
}

game:GetService("ReplicatedStorage").Events.ClmFrCrt:FireServer(unpack(args))
end
end)
spawn(function()
    while autogetdemCrates == true do
       wait(1)


local args = {
    [1] = false
}

game:GetService("ReplicatedStorage").Events.ClmFrCrt:FireServer(unpack(args))
end
end)



spawn(function()
    while autogetBOOBOOBOOSTS == true do
wait(1)
game:GetService("ReplicatedStorage").Events.ClaimFreeBoostStar:FireServer()
end
end)
spawn(function()
while autoMiningBoost == true do
    wait(1)
local args = {
    [1] = "1H Mining Boost"
}

game:GetService("ReplicatedStorage").Events.BuyBoost:FireServer(unpack(args))
end
end)
spawn(function()
    while autouseBOOBOOBOOSTS == true do 
        wait(1)
        if game:GetService("Players").LocalPlayer.CurBoostim.Value == 0 then
local args = {
    [1] = "1H Mining Boost"
}

game:GetService("ReplicatedStorage").Events.UseBoost:FireServer(unpack(args))
end
end
end)
spawn(function()
while autoovercock == true do
wait(1)
game:GetService("ReplicatedStorage").Events.Overclk:InvokeServer()
end
end)
