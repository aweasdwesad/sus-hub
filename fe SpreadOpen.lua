    -- FE SUS 2? ðŸ˜³

    
    game:GetService("StarterGui"):SetCore("SendNotification", { 
        Title = "FE Sus 2";
        Text = "Made by Nil and Melon :D";
        Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
    Duration = 16;
    wait(0.1)


local playing = false
local rtrnv;
local c;
local tbl3;
local v;
local anim;
local count;
local hhhh;
local asdf;
local s;
local animid;
local plr;
local char;
local cframe;
local torso;
local rs;
local ls;
local rh;
local lh;
local n;
local rj;
local rsc0;
local lsc0;
local rhc0;
local lhc0;
local rjc0;
local nc0;
local gc0;
local orsc0;
local olsc0;
local orhc0;
local olhc0;
local orjc0;
local onc0;
local count2;
local maxcount2;

local function getnext(tbl,number)
	c=100
	rtrnv=0
	for i,v in pairs(tbl) do
		if i>number and i-number<c then
			c=i-number
			rtrnv=i
		end
	end
	return(rtrnv)
end
local function wait2(tim)
	if tim<0.1 then
		game:GetService("RunService").Heartbeat:Wait()
	else
		for i=1,tim*40 do
			game:GetService("RunService").Heartbeat:Wait()
		end
	end
end
local function kftotbl(kf) -- Below this is PAIN
tbl3 = {}
	for i,v in pairs(kf:GetDescendants()) do
		if v:IsA("Pose") then
			tbl3[string.sub(v.Name,1,1)..string.sub(v.Name,#v.Name,#v.Name)] = v.CFrame
		end
	end
	return(tbl3)
end
        
        if playanother == true then
				playanother = false
			end
			playing = false
			s = Instance.new("Sound", game:GetService("Players").LocalPlayer.Character.Torso)

				s.SoundId = "rbxassetid://0"

			s.Looped = false
			s.Playing = false
			wait(.1) -- Do not change because changing it will break.
			animid="rbxassetid://4966886065"
			plr = game.Players.LocalPlayer
			char = game:GetService("Players").LocalPlayer.Character
			if _G.permadeath == true then
				char = workspace.non
			end
			cframe = char.HumanoidRootPart.CFrame
			torso = char.Torso
			-----------------------------------------------------------
			rs = torso["Right Shoulder"] -- Just took this from another script(Faster).
			ls = torso["Left Shoulder"]
			rh = torso["Right Hip"]
			lh = torso["Left Hip"]
			n = torso["Neck"]
			rj = char.HumanoidRootPart["RootJoint"]
			rsc0 = rs.C0
			lsc0 = ls.C0
			rhc0 = rh.C0
			lhc0 = lh.C0
			rjc0 = rj.C0
			nc0 = n.C0
			gc0 = CFrame.new()
			orsc0 = rs.C0
			olsc0 = ls.C0
			orhc0 = rh.C0
			olhc0 = lh.C0
			orjc0 = rj.C0
			onc0 = n.C0
			count2 = 100
			maxcount2=100
			-----------------------------------------------------------
			game:GetService("RunService").Heartbeat:Connect(function() -- Speed.
				if playanother == true then
					return nil
				else
					count2 = count2+1
					if count2<=maxcount2 then
						rs.Transform=rs.Transform:Lerp(rsc0,count2/maxcount2)
						ls.Transform=ls.Transform:Lerp(lsc0,count2/maxcount2)
						rh.Transform=rh.Transform:Lerp(rhc0,count2/maxcount2)
						lh.Transform=lh.Transform:Lerp(lhc0,count2/maxcount2)
						n.Transform=n.Transform:Lerp(nc0,count2/maxcount2)
						rj.Transform=rj.Transform:Lerp(rjc0,count2/maxcount2)
					end
				end
			end)
			-----------------------------------------------------------
			animid=game:GetObjects(animid)[1]
			anim={}
			for i,v in pairs(animid:GetChildren()) do
				if v:IsA("Keyframe") then
					anim[v.Time]=kftotbl(v)
				end
			end

			count = 0
			char=game:GetService("Players").LocalPlayer.Character
			if _G.permadeath == true then
				char = workspace.non
			end
						if _G.permadeath == false then
							hhhh=char.Humanoid.Animator
			hhhh.Parent = nil
			end
			hhhh=char.Humanoid.Animator
			hhhh.Parent = nil
			for _,v in pairs(char.Humanoid:GetPlayingAnimationTracks()) do
				v:Stop()
			end

			plr.CharacterRemoving:Connect(function()
				if playing == true then
					playing = false
				end
			end)

			while wait() do
				if playanother == true then
					break
				else
					for i,oasjdadlasdkadkldjkl in pairs(anim) do
						asdf=getnext(anim,count)
						v=anim[asdf]
						if v["Lg"] then
							lhc0 = v["Lg"]
						end
						if v["Rg"] then
							rhc0 = v["Rg"]
						end
						if v["Lm"] then
							lsc0 = v["Lm"]
						end
						if v["Rm"] then
							rsc0 = v["Rm"]
						end
						if v["To"] then
							rjc0 = v["To"]
						end
						if v["Hd"] then
							nc0 = v["Hd"]
						end
						count2=0
						maxcount2=asdf-count
						count=asdf
						wait(asdf-count)
						count2=maxcount2
						if v["Lg"] then
							char.Torso["Left Hip"].Transform = v["Lg"]
						end
						if v["Rg"] then
							char.Torso["Right Hip"].Transform = v["Rg"]
						end
						if v["Lm"] then
							char.Torso["Left Shoulder"].Transform = v["Lm"]
						end
						if v["Rm"] then
							char.Torso["Right Shoulder"].Transform = v["Rm"]
						end
						if v["To"] then
							char.HumanoidRootPart["RootJoint"].Transform = v["To"]
						end
						if v["Hd"] then
							char.Torso["Neck"].Transform = v["Hd"]
						end
					end
				end
			end
		--end)
