return {
	terminal = "kitty",
	browser = "brave",
	-- browser = "zen-browser",
	editor = "neovim",

	-- Gaps
	-- workspaceGaps              = 20,
	windowGapsIn = 4,
	windowGapsOut = 15,
	-- singleWindowGapsOut        = 20,

	-- Window styling
	-- windowRounding             = 15,
	windowBorderSize = 2,

	------------------
	---- KEYBINDS ----
	------------------

	-- Modifier only, the actual binds will be mod + 0-9. These should be strings and not arrays.
	kbGoToWs = "",
	kbGoToWsGroup = "",
	kbMoveWinToWs = "SUPER + SHIFT",
	kbMoveWinToWsGroup = "",

	-- All the following binds can be either an array of binds to bind multiple keys, or a single string.

	-- Workspaces
	kbMoveWinToWsSpecial = "",
	kbMoveWinFromWsSpecial = "",
	kbMoveWinToWsNext = "",
	kbMoveWinToWsPrev = "",
	kbNextWs = "",
	kbPrevWs = "",
	kbNextWsGroup = "",
	kbPrevWsGroup = "",

	-- Window Group
	kbWindowCycleNext = "",
	kbWindowCyclePrev = "",
	kbWindowGroupCycleNext = "",
	kbWindowGroupCyclePrev = "",
	kbUngroup = "",
	kbToggleGroup = "",
	kbGroupLockActive = "",

	-- Window Actions
	-- kbWindowDecreaseWidth      = { "SUPER + Minus", "SUPER + ALT + Left" },
	-- kbWindowIncreaseWidth      = { "SUPER + Equal", "SUPER + ALT + Right" },
	-- kbWindowDecreaseHeight     = { "SUPER + SHIFT + Minus", "SUPER + ALT + Up" },
	-- kbWindowIncreaseHeight     = { "SUPER + SHIFT + Equal", "SUPER + ALT + Down" },

	kbMoveWindow = "",
	kbResizeWindow = "",
	kbCenterWindow = "",
	kbNormalizeWindow = "",
	kbWindowPip = "",
	kbPinWindow = "",
	-- kbWindowFullscreen         = "SUPER + F",
	-- kbWindowBorderedFullscreen = "SUPER + ALT + F",
	-- kbToggleWindowFloating     = "SUPER + ALT + Space",
	kbCloseWindow = "SUPER + E",

	-- Special workspaces toggles
	kbSpecialWs = "",
	kbSystemMonitorWs = "",
	kbMusicWs = "",
	kbCommunicationWs = "",
	kbTodoWs = "",

	-- Apps
	kbTerminal = "SUPER + Return",
	kbBrowser = "SUPER + B",
	kbEditor = "",
	kbFileExplorer = "",
	kbAudioSettings = "",

	-- Utilities
	-- kbScreenshot               = "Print",
	-- kbScreenshotFreeze         = "SUPER + SHIFT + S",
	-- kbScreenshotRegion         = "SUPER + SHIFT + ALT + S",
	-- kbRecord                   = "CTRL + ALT + R",
	-- kbRecordSound              = "SUPER + ALT + R",
	-- kbRecordRegion             = "SUPER + SHIFT + ALT + R",
	-- kbColorPicker              = "SUPER + SHIFT + C",

	-- Media
	-- kbMediaToggle              = "CTRL + SUPER + Space",
	-- kbMediaNext                = "CTRL + SUPER + Equal",
	-- kbMediaPrev                = "CTRL + SUPER + Minus",
	-- kbMediaStop                = "CTRL + SUPER + Backspace",
	-- kbVolumeMute               = "SUPER + SHIFT + M",

	-- Misc
	-- kbLauncher                 = "SUPER + SUPER_L",
	-- kbSession                  = "CTRL + ALT + Delete",
	-- kbShowSidebar              = "SUPER + N",
	-- kbClearNotifs              = "CTRL + ALT + C",
	-- kbShowPanels               = "SUPER + K",
	kbLock = "CTRL + SUPER + L",
	kbRestoreLock = "",
	-- kbSleep                    = "SUPER + SHIFT + L",

	-- Clipboard and emoji picker
	-- kbClipboard                = "SUPER + V",
	-- kbClipboardDel             = "SUPER + ALT + V",
	-- kbClipboardPasteLatest     = "CTRL + SHIFT + ALT + V",
	-- kbEmoji                    = "SUPER + Period",
}
