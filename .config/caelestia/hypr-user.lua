hl.monitor({
	output = "eDP-1",
	mode = "1920x1080@60",
	position = "0x0",
	scale = 1.25,
})

hl.monitor({
	output = "desc:MKG MKQ27F240L H90297Q8EFXW3",
	mode = "2560x1440@59.95",
	position = "1536x0",
	scale = 1.25,
})

hl.config({
	-- general = {
	-- 	gaps_in = 4,
	-- 	gaps_out = 15,
	-- 	border_size = 2,
	-- },

	input = {
		kb_layout = "us,ru",
		kb_options = "grp:alt_shift_toggle",
		sensitivity = -0.6,
	},
})

hl.device({
	name = "elan2204:00-04f3:30f5-touchpad",
	sensitivity = 0,
})

-- hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
-- hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
-- hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1.0 } } })
-- hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })
--
-- hl.animation({ leaf = "workspaces", enabled = true, speed = 1.94, bezier = "almostLinear", style = "slidefade" })

------------------
-- KEYBINDINGS
------------------

hl.bind("CTRL + SUPER + E", hl.dsp.window.kill())

hl.bind("SUPER + H", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + L", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + K", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + J", hl.dsp.focus({ direction = "down" }))

hl.bind("SUPER + ALT + H", hl.dsp.window.swap({ direction = "left" }))
hl.bind("SUPER + ALT + L", hl.dsp.window.swap({ direction = "right" }))
hl.bind("SUPER + ALT + K", hl.dsp.window.swap({ direction = "up" }))
hl.bind("SUPER + ALT + J", hl.dsp.window.swap({ direction = "down" }))

hl.bind(
	"SUPER + Escape",
	hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")
)

for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind("SUPER + " .. key, hl.dsp.focus({ workspace = i, on_current_monitor = true }))
	hl.bind("SUPER + SHIFT + " .. key, hl.dsp.window.move({ workspace = i, follow = true }))
end

hl.bind(
	"SUPER + SPACE",
	hl.dsp.workspace.swap_monitors({
		monitor1 = "0",
		monitor2 = "1",
	})
)

hl.window_rule({
	match = {
		tag = "music_player",
	},
	workspace = "unset",
})

hl.env("ELECTRON_OZONE_PLATFORM_HINT", "wayland")
hl.env("QT_QPA_PLATFORM", "wayland")
