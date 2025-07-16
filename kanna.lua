--  Deus no Tédio Hub com GUI RedzHubUI e novo logo do Discord 

local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/Library-ui/refs/heads/main/Redzhubui"))()
local Window = redzlib:MakeWindow({
  Title = "Deus no Tédio Hub",
  SubTitle = "versão beta 😈",
  SaveFolder = "Dominus"
})

-- Adicionando o ID após a criação da janela
Window.ID = "91327549612406"

Window:AddMinimizeButton({
  Button = { Image = "rbxassetid://7101487396", BackgroundTransparency = 0 },
  Corner = { CornerRadius = UDim.new(0, 12) }
})

local Tab1 = Window:MakeTab({"IMPORTANTE!", "EM BREVE"})
local Tab2 = Window:MakeTab({"EM BREVE", "EM BREVE"})
local Tab3 = Window:MakeTab({"EM BREVE", "FPS"})
local Tab4 = Window:MakeTab({"EM BREVE", "Pets"})
local Tab5 = Window:MakeTab({"EM BREVE", "Crime"})
local Tab6 = Window:MakeTab({"EM BREVE", "Mistério"})
local Tab7 = Window:MakeTab({"EM BREVE", "Defesa"})
local Tab8 = Window:MakeTab({"EM BREVE", "Simulação"})
local Tab9 = Window:MakeTab({"EM BREVE", "Geral"})
Window:SelectTab(Tab1)

-- ✅ Servidor do Discord com nova imagem personalizada
Tab1:AddDiscordInvite({
  Name = "BUSCO ADMINISTRADORES ÚTEIS PARA ME AJUDAR",
  Description = "SERVIDOR SIMPLES AINDA",
  Logo = "rbxassetid://91327549612406", -- ← novo logo aqui
  Invite = "https://discord.gg/NuyrXhcJ"
})

local Section = Tab1:AddSection({"EM BREVE"})

-- Sistema de poderes
local Dominus = {
  Toggles = {}
}

-- Velocidade Divina
Dominus.Toggles.VelocidadeDivina = {
  Ativo = false,
  Toggle = function()
    local jogador = game.Players.LocalPlayer
    local humanoide = jogador.Character and jogador.Character:FindFirstChildOfClass("Humanoid")
    if humanoide then
      Dominus.Toggles.VelocidadeDivina.Ativo = not Dominus.Toggles.VelocidadeDivina.Ativo
      humanoide.WalkSpeed = Dominus.Toggles.VelocidadeDivina.Ativo and 100 or 16
    end
  end
}

-- Saltos Celestiais
Dominus.Toggles.SaltosCelestiais = {
  Ativo = false,
  Toggle = function()
    local jogador = game.Players.LocalPlayer
    local humanoide = jogador.Character and jogador.Character:FindFirstChildOfClass("Humanoid")
    if humanoide then
      Dominus.Toggles.SaltosCelestiais.Ativo = not Dominus.Toggles.SaltosCelestiais.Ativo
      humanoide.JumpPower = Dominus.Toggles.SaltosCelestiais.Ativo and 120 or 50
    end
  end
}

-- Invisibilidade
Dominus.Toggles.Invisibilidade = {
  Ativo = false,
  Toggle = function()
    local jogador = game.Players.LocalPlayer
    if not jogador.Character then return end
    
    Dominus.Toggles.Invisibilidade.Ativo = not Dominus.Toggles.Invisibilidade.Ativo

    for _, parte in pairs(jogador.Character:GetDescendants()) do
      if parte:IsA("BasePart") and parte.Name ~= "HumanoidRootPart" then
        parte.Transparency = Dominus.Toggles.Invisibilidade.Ativo and 1 or 0
      elseif parte:IsA("Decal") and parte.Name == "face" then -- ← Correção para face
        parte.Transparency = Dominus.Toggles.Invisibilidade.Ativo and 1 or 0
      elseif parte:IsA("Accessory") then
        local handle = parte:FindFirstChild("Handle")
        if handle then
          handle.Transparency = Dominus.Toggles.Invisibilidade.Ativo and 1 or 0
        end
      end
    end
  end
}

-- GUI Toggles
Tab1:AddToggle({
  Name = "BETA NÃO FUNCIONAL",
  Description = "BUGADO.",
  Default = false,
  Callback = function()
    Dominus.Toggles.VelocidadeDivina.Toggle()
  end
})

Tab1:AddToggle({
  Name = "BETA NÃO FUNCIONAL",
  Description = "BUGADO.",
  Default = false,
  Callback = function()
    Dominus.Toggles.SaltosCelestiais.Toggle()
  end
})

Tab1:AddToggle({
  Name = "BETA NÃO FUNCIONAL",
  Description = "bugado",
  Default = false,
  Callback = function()
    Dominus.Toggles.Invisibilidade.Toggle()
  end
})

print("✅ Deus no Tédio Hub carregado com nova imagem e tudo divinamente configurado.")
