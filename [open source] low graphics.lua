-- [ idk what the fuck im doing im so bad at this ] --

local w = game.Workspace
local l = game.Lighting
local t = w.Terrain
local m = w.Map
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(game:GetDescendants()) do
    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") then
        if decalsyeeted then
            v.Transparency = 1
        end
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
        v.Enabled = false
    elseif v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    end
end

for i, e in pairs(l:GetChildren()) do
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end
  
for i,v in pairs(w:GetDescendants()) do
    if v.Name == "Leaf" then
        v:Destroy()
    end
end 

for i,v in next, m:GetDescendants() do
    if v.Name == "Hedge1" then
        v:Destroy()
    end
end   

    for i,v in next, game:GetDescendants() do
        if v.Name == "Grass" then
            if v.Parent.ClassName ~= "Folder" then
                v:Destroy()
            end
        end
    end

    

    for i,v in next, game:GetDescendants() do
        if v.Name == "Light" then
            v:Destroy()
        end
    end    

    for i,v in next, game:GetDescendants() do
        if v.ClassName == "Part" then
            if v.Material ~= Enum.Material.SmoothPlastic then
                v.Material = Enum.Material.SmoothPlastic             
            end
        end
    end

    for i,v in next, game:GetDescendants() do
        if v.ClassName == "UnionOperation" then
            if v.Material == Enum.Material.SmoothPlastic then
                v.Material = Enum.Material.SmoothPlastic             
            end
        end
    end

    for i,v in next, game:GetDescendants() do
        if v.ClassName == "Union" then
            if v.Material == Enum.Material.SmoothPlastic then
                v.Material = Enum.Material.SmoothPlastic             
            end
        end
    end

    for i,v in next, m:GetChildren() do
        if v.Name == "Grass Plant" then
            v:Destroy()
        end
    end

    for i,v in next, l:GetChildren() do
        if v.Name == "Bloom" then
            v.Threshold = 10
        end
    end

for i,v in next, game:GetService("Workspace").Map.Decoration:GetChildren() do
    v:Destroy()
end
