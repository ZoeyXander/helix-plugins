
local PLUGIN = PLUGIN
local ix = ix
PLUGIN.name = "Advanced Medical System"
PLUGIN.description = "Introduction of heavy medicine and new features"
PLUGIN.author = "Bilwin"
PLUGIN.schema = "Any"

if !ix.stdlib then error("You need to install stdlib!! https://github.com/Bilwin/helix-plugins/tree/main/!stdlib") return end

ix.AMS = ix.AMS or {}
ix.util.Include("sv_meta.lua")
ix.util.Include("sv_plugin.lua")
ix.util.IncludeDir(PLUGIN.folder..'/diseases', true)
ix.util.IncludeDir(PLUGIN.folder..'/wounds', true)

-- Limbs
ix.util.Include("sh_limbs.lua")
ix.util.Include("sv_limbs.lua")
ix.util.Include("sv_limbsmeta.lua")

do
    ix.char.RegisterVar("diseases", {
		field = "diseases",
		fieldType = ix.type.string,
        default = "",
		bNoDisplay = true
	})

    ix.char.RegisterVar("wounds", {
		field = "wounds",
		fieldType = ix.type.string,
        default = "",
		bNoDisplay = true
	})
end
