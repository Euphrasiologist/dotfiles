# Autogenerated config.py
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

# Uncomment this to still load settings configured via autoconfig.yml
# config.load_autoconfig()

# Aliases for commands. The keys of the given dictionary are the
# aliases, while the values are the commands they map to.
# Type: Dict
c.aliases = {'q': 'quit', 'w': 'session-save', 'wq': 'quit --save'}

# Background color of the completion widget category headers.
# Type: QssColor
c.colors.completion.category.bg = 'lightgrey'

# Foreground color of completion widget category headers.
# Type: QtColor
c.colors.completion.category.fg = 'black'

# Background color of the completion widget for even rows.
# Type: QssColor
c.colors.completion.even.bg = 'lightgrey'

# Text color of the completion widget.
# Type: QtColor
c.colors.completion.fg = 'black'

# Background color of the selected completion item.
# Type: QssColor
c.colors.completion.item.selected.bg = 'darkgrey'

# Bottom border color of the selected completion item.
# Type: QssColor
c.colors.completion.item.selected.border.bottom = 'black'

# Top border color of the completion widget category headers.
# Type: QssColor
c.colors.completion.item.selected.border.top = 'black'

# Foreground color of the selected completion item.
# Type: QtColor
c.colors.completion.item.selected.fg = 'black'

# Foreground color of the matched text in the completion.
# Type: QssColor
c.colors.completion.match.fg = '#ff4444'

# Background color of the completion widget for odd rows.
# Type: QssColor
c.colors.completion.odd.bg = '#F2F2F2'

# Color of the scrollbar in completion view
# Type: QssColor
c.colors.completion.scrollbar.bg = 'darkgrey'

# Color of the scrollbar handle in completion view.
# Type: QssColor
c.colors.completion.scrollbar.fg = 'white'

# Background color for the download bar.
# Type: QssColor
c.colors.downloads.bar.bg = 'black'

# Foreground color for downloads with errors.
# Type: QtColor
c.colors.downloads.error.fg = 'white'

# Background color for hints. Note that you can use a `rgba(...)` value
# for transparency.
# Type: QssColor
c.colors.hints.bg = 'black'

# Font color for hints.
# Type: QssColor
c.colors.hints.fg = 'white'

# Font color for the matched part of hints.
# Type: QssColor
c.colors.hints.match.fg = 'lime'

# Text color for the keyhint widget.
# Type: QssColor
c.colors.keyhint.fg = '#FFFFFF'

# Background color for prompts.
# Type: QssColor
c.colors.prompts.bg = 'lightgrey'

# Border used around UI elements in prompts.
# Type: String
c.colors.prompts.border = '1px solid gray'

# Foreground color for prompts.
# Type: QssColor
c.colors.prompts.fg = 'black'

# Background color of the statusbar in command mode.
# Type: QssColor
c.colors.statusbar.command.bg = 'darkgrey'

# Foreground color of the statusbar in command mode.
# Type: QssColor
c.colors.statusbar.command.fg = 'black'

# Background color of the statusbar in insert mode.
# Type: QssColor
c.colors.statusbar.insert.bg = '#039B9A'

# Background color of the statusbar.
# Type: QssColor
c.colors.statusbar.normal.bg = 'darkgrey'

# Foreground color of the statusbar.
# Type: QssColor
c.colors.statusbar.normal.fg = 'black'

# Foreground color of the statusbar in private browsing mode.
# Type: QssColor
c.colors.statusbar.private.fg = 'black'

# Foreground color of the URL in the statusbar on error.
# Type: QssColor
c.colors.statusbar.url.error.fg = 'orange'

# Default foreground color of the URL in the statusbar.
# Type: QssColor
c.colors.statusbar.url.fg = 'black'

# Foreground color of the URL in the statusbar for hovered links.
# Type: QssColor
c.colors.statusbar.url.hover.fg = 'blue'

# Foreground color of the URL in the statusbar on successful load
# (http).
# Type: QssColor
c.colors.statusbar.url.success.http.fg = 'black'

# Foreground color of the URL in the statusbar on successful load
# (https).
# Type: QssColor
c.colors.statusbar.url.success.https.fg = 'black'

# Foreground color of the URL in the statusbar when there's a warning.
# Type: QssColor
c.colors.statusbar.url.warn.fg = 'black'

# Background color of the tab bar.
# Type: QtColor
c.colors.tabs.bar.bg = '#555555'

# Background color of unselected even tabs.
# Type: QtColor
c.colors.tabs.even.bg = 'lightgrey'

# Foreground color of unselected even tabs.
# Type: QtColor
c.colors.tabs.even.fg = 'black'

# Color for the tab indicator on errors.
# Type: QtColor
c.colors.tabs.indicator.error = 'black'

# Color gradient start for the tab indicator.
# Type: QtColor
c.colors.tabs.indicator.start = 'black'

# Color gradient end for the tab indicator.
# Type: QtColor
c.colors.tabs.indicator.stop = 'black'

# Color gradient interpolation system for the tab indicator.
# Type: ColorSystem
# Valid values:
#   - rgb: Interpolate in the RGB color system.
#   - hsv: Interpolate in the HSV color system.
#   - hsl: Interpolate in the HSL color system.
#   - none: Don't show a gradient.
c.colors.tabs.indicator.system = 'rgb'

# Background color of unselected odd tabs.
# Type: QtColor
c.colors.tabs.odd.bg = 'lightgrey'

# Foreground color of unselected odd tabs.
# Type: QtColor
c.colors.tabs.odd.fg = 'black'

# Background color of selected even tabs.
# Type: QtColor
c.colors.tabs.selected.even.bg = 'darkgrey'

# Foreground color of selected even tabs.
# Type: QtColor
c.colors.tabs.selected.even.fg = 'black'

# Background color of selected odd tabs.
# Type: QtColor
c.colors.tabs.selected.odd.bg = 'darkgrey'

# Foreground color of selected odd tabs.
# Type: QtColor
c.colors.tabs.selected.odd.fg = 'black'

# Background color for webpages if unset (or empty to use the theme's
# color)
# Type: QtColor
c.colors.webpage.bg = 'white'

# The height of the completion, in px or as percentage of the window.
# Type: PercOrInt
c.completion.height = '30%'

# Whether quitting the application requires a confirmation.
# Type: ConfirmQuit
# Valid values:
#   - always: Always show a confirmation.
#   - multiple-tabs: Show a confirmation if multiple tabs are opened.
#   - downloads: Show a confirmation if downloads are running
#   - never: Never show a confirmation.
c.confirm_quit = ['never']

# Number of milliseconds to wait before removing finished downloads. If
# set to -1, downloads are never removed.
# Type: Int
c.downloads.remove_finished = 2000

# The editor (and arguments) to use for the `open-editor` command. `{}`
# gets replaced by the filename of the file to be edited.
# Type: ShellCommand
c.editor.command = ['open', '{}']

# Font used in the completion widget.
# Type: Font
c.fonts.completion.entry = '8pt monospace'

# Font used in the keyhint widget.
# Type: Font
c.fonts.keyhint = '8pt monospace'

# Font used for error messages.
# Type: Font
c.fonts.messages.error = '8pt monospace'

# Font used for info messages.
# Type: Font
c.fonts.messages.info = '8pt monospace'

# Font used for warning messages.
# Type: Font
c.fonts.messages.warning = '8pt monospace'

# Default monospace fonts. Whenever "monospace" is used in a font
# setting, it's replaced with the fonts listed here.
# Type: Font
c.fonts.monospace = '"Hack, xos4 Terminus", Terminus, Monospace, "DejaVu Sans Mono", Monaco, "Bitstream Vera Sans Mono", "Andale Mono", "Courier New", Courier, "Liberation Mono", monospace, Fixed, Consolas, Terminal'

# Font used for prompts.
# Type: Font
c.fonts.prompts = '8pt sans-serif'

# Font used in the statusbar.
# Type: Font
c.fonts.statusbar = '8pt monospace'

# Font used in the tab bar.
# Type: QtFont
c.fonts.tabs = '8pt monospace'

# CSS border value for hints.
# Type: String
c.hints.border = '2px solid black'

# The maximum time in minutes between two history items for them to be
# considered being from the same browsing session. Items with less time
# between them are grouped when being displayed in `:history`. Use -1 to
# disable separation.
# Type: Int
c.history_gap_interval = -1

# Find text on a page case-insensitively.
# Type: String
# Valid values:
#   - always: Search case-insensitively
#   - never: Search case-sensitively
#   - smart: Search case-sensitively if there are capital chars
c.ignore_case = 'smart'

# How to open links in an existing instance if a new one is launched.
# This happens when e.g. opening a link from a terminal. See
# `new_instance_open_target_window` to customize in which window the
# link is opened in.
# Type: String
# Valid values:
#   - tab: Open a new tab in the existing window and activate the window.
#   - tab-bg: Open a new background tab in the existing window and activate the window.
#   - tab-silent: Open a new tab in the existing window without activating the window.
#   - tab-bg-silent: Open a new background tab in the existing window without activating the window.
#   - window: Open in a new window.
c.new_instance_open_target = 'tab'

# Which window to choose when opening links as new tabs. When
# `new_instance_open_target` is not set to `window`, this is ignored.
# Type: String
# Valid values:
#   - first-opened: Open new tabs in the first (oldest) opened window.
#   - last-opened: Open new tabs in the last (newest) opened window.
#   - last-focused: Open new tabs in the most recently focused window.
#   - last-visible: Open new tabs in the most recently visible window.
c.new_instance_open_target_window = 'last-focused'

# Enable smooth scrolling for web pages. Note smooth scrolling does not
# work with the `:scroll-px` command.
# Type: Bool
c.scrolling.smooth = True

# Padding for the statusbar.
# Type: Padding
c.statusbar.padding = {'bottom': 5, 'left': 5, 'right': 5, 'top': 5}

# The position of the status bar.
# Type: VerticalPosition
# Valid values:
#   - top
#   - bottom
c.statusbar.position = 'bottom'

# Open new tabs (middleclick/ctrl+click) in the background.
# Type: Bool
c.tabs.background = True

# Show favicons in the tab bar.
# Type: Bool
c.tabs.favicons.show = False

# Padding for tab indicators
# Type: Padding
c.tabs.indicator_padding = {'bottom': 0, 'left': 0, 'right': 5, 'top': 0}

# How new tabs opened from another tab are positioned.
# Type: NewTabPosition
# Valid values:
#   - prev: Before the current tab.
#   - next: After the current tab.
#   - first: At the beginning.
#   - last: At the end.
c.tabs.new_position.related = 'next'

# Padding around text for tabs
# Type: Padding
c.tabs.padding = {'bottom': 5, 'left': 5, 'right': 5, 'top': 5}

# The position of the tab bar.
# Type: Position
# Valid values:
#   - top
#   - bottom
#   - left
#   - right
c.tabs.position = 'top'

# Alignment of the text inside of tabs.
# Type: TextAlignment
# Valid values:
#   - left
#   - right
#   - center
c.tabs.title.alignment = 'center'

# The format to use for the tab title. The following placeholders are
# defined:  * `{perc}`: The percentage as a string like `[10%]`. *
# `{perc_raw}`: The raw percentage, e.g. `10` * `{title}`: The title of
# the current web page * `{title_sep}`: The string ` - ` if a title is
# set, empty otherwise. * `{index}`: The index of this tab. * `{id}`:
# The internal tab ID of this tab. * `{scroll_pos}`: The page scroll
# position. * `{host}`: The host of the current web page. * `{backend}`:
# Either ''webkit'' or ''webengine'' * `{private}` : Indicates when
# private mode is enabled.
# Type: FormatString
c.tabs.title.format = '{index}: {title} - {host}'

# The width of the tab bar if it's vertical, in px or as percentage of
# the window.
# Type: PercOrInt
c.tabs.width.bar = '20%'

# Width of the progress indicator (0 to disable).
# Type: Int
c.tabs.width.indicator = 10

# Whether to wrap when changing tabs.
# Type: Bool
c.tabs.wrap = True

# Definitions of search engines which can be used via the address bar.
# Maps a searchengine name (such as `DEFAULT`, or `ddg`) to a URL with a
# `{}` placeholder. The placeholder will be replaced by the search term,
# use `{{` and `}}` for literal `{`/`}` signs. The searchengine named
# `DEFAULT` is used when `url.auto_search` is turned on and something
# else than a URL was entered to be opened. Other search engines can be
# used by prepending the search engine name to the search term, e.g.
# `:open google qutebrowser`.
# Type: Dict
c.url.searchengines = {'DEFAULT': 'https://duckduckgo.com/?q={}', 'google': 'https://www.google.com/search?hl=en&q={}', 'reddit': 'https://www.reddit.com/search?q={}', 'stack': 'https://stackexchange.com/search?q={}'}

# Bindings for normal mode
config.bind('<backspace>', 'back')
config.bind('gT', 'tab-prev')
config.bind('gt', 'tab-next')