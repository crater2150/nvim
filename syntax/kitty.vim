" Vim syntax file
" Language: Kitty config

if exists("b:current_syntax")
	finish
endif

syn match kittyKW '^\S*' contains=kittyOptions
syn match kittyMapKW '^\(mouse_\)\?map' contains=kittyMap
			\ nextgroup=kittyKeybind
syn keyword kittyOptions contained
			\ active_border_color active_tab_background active_tab_font_style active_tab_foreground active_tab_title_template
			\ adjust_column_width adjust_line_height allow_hyperlinks allow_remote_control
			\ background background_image background_image_layout background_image_linear background_opacity background_tint
			\ bell_border_color bell_on_tab bold_font bold_italic_font box_drawing_scale
			\ clear_all_shortcuts click_interval clipboard_control close_on_child_death
			\ color0 color1 color2 color3 color4 color5 color6 color7 color8 color9 color10
			\ color11 color12 color13 color14 color15 color16 color17 color18 color19 color20
			\ color21 color22 color23 color24 color25 color26 color27 color28 color29 color30
			\ color31 color32 color33 color34 color35 color36 color37 color38 color39 color40
			\ color41 color42 color43 color44 color45 color46 color47 color48 color49 color50
			\ color51 color52 color53 color54 color55 color56 color57 color58 color59 color60
			\ color61 color62 color63 color64 color65 color66 color67 color68 color69 color70
			\ color71 color72 color73 color74 color75 color76 color77 color78 color79 color80
			\ color81 color82 color83 color84 color85 color86 color87 color88 color89 color90
			\ color91 color92 color93 color94 color95 color96 color97 color98 color99 color100
			\ color101 color102 color103 color104 color105 color106 color107 color108 color109 color110
			\ color111 color112 color113 color114 color115 color116 color117 color118 color119 color120
			\ color121 color122 color123 color124 color125 color126 color127 color128 color129 color130
			\ color131 color132 color133 color134 color135 color136 color137 color138 color139 color140
			\ color141 color142 color143 color144 color145 color146 color147 color148 color149 color150
			\ color151 color152 color153 color154 color155 color156 color157 color158 color159 color160
			\ color161 color162 color163 color164 color165 color166 color167 color168 color169 color170
			\ color171 color172 color173 color174 color175 color176 color177 color178 color179 color180
			\ color181 color182 color183 color184 color185 color186 color187 color188 color189 color190
			\ color191 color192 color193 color194 color195 color196 color197 color198 color199 color200
			\ color201 color202 color203 color204 color205 color206 color207 color208 color209 color210
			\ color211 color212 color213 color214 color215 color216 color217 color218 color219 color220
			\ color221 color222 color223 color224 color225 color226 color227 color228 color229 color230
			\ color231 color232 color233 color234 color235 color236 color237 color238 color239 color240
			\ color241 color242 color243 color244 color245 color246 color247 color248 color249 color250
			\ color251 color252 color253 color254 color255
			\ command_on_bell confirm_os_window_close copy_on_select cursor cursor_beam_thickness cursor_blink_interval 
			\ cursor_shape cursor_stop_blinking_after cursor_text_color cursor_underline_thickness default_pointer_shape
			\ detect_urls dim_opacity disable_ligatures draw_minimal_borders dynamic_background_opacity editor enable_audio_bell
			\ enabled_layouts env focus_follows_mouse font_family font_features font_size force_ltr foreground
			\ hide_window_decorations inactive_border_color inactive_tab_background inactive_tab_font_style inactive_tab_foreground
			\ inactive_text_alpha initial_window_height initial_window_width input_delay italic_font kitten_alias
			\ linux_display_server
			\ macos_custom_beam_cursor macos_hide_from_tasks macos_option_as_alt macos_quit_when_last_window_closed
			\ macos_show_window_title_in macos_thicken_font macos_titlebar_color macos_traditional_fullscreen
			\ macos_window_resizable
			\ mark1_background mark1_foreground mark2_background mark2_foreground mark3_background mark3_foreground
			\ mouse_hide_wait
			\ listen_on open_url_with placement_strategy pointer_shape_when_dragging pointer_shape_when_grabbed
			\ remember_window_size repaint_delay resize_debounce_time resize_draw_strategy resize_in_steps
			\ scrollback_fill_enlarged_window scrollback_lines scrollback_pager scrollback_pager_history_size
			\ select_by_word_characters selection_background selection_foreground
			\ shell single_window_margin_width startup_session strip_trailing_spaces symbol_map sync_to_monitor
			\ tab_activity_symbol tab_bar_background tab_bar_edge tab_bar_margin_height tab_bar_margin_width tab_bar_min_tabs
			\ tab_bar_style tab_fade tab_powerline_style tab_separator tab_switch_strategy tab_title_template
			\ term touch_scroll_multiplier update_check_interval url_color url_prefixes url_style visual_bell_duration
			\ wayland_titlebar_color wheel_scroll_multiplier window_alert_on_bell
			\ window_border_width window_margin_width window_padding_width window_resize_step_cells
			\ window_resize_step_lines

syn keyword kittyMap contained map mouse_map nextgroup=kittyKeybind

syn match kittyActionKW '\s*\S*\s*' contained contains=kittyInvalidAction,kittyAction
syn match kittyInvalidAction '\S*' contained
syn keyword kittyAction contained
			\ disable_ligatures_in paste_from_buffer something no_op combine action
			\ set_font_size pass_selection_to_program new_window launch goto_tab new_tab
			\ goto_layout change_font_size clear_terminal load_config send_text click
			\ release press doublepress triplepress copy_to_clipboard paste_from_clipboard
			\ paste_from_selection scroll_line_up scroll_line_down scroll_page_up scroll_page_down scroll_home
			\ scroll_end show_scrollback new_os_window close_window next_window previous_window
			\ move_window_forward move_window_backward move_window_to_top start_resizing_window first_window second_window
			\ third_window fourth_window fifth_window sixth_window seventh_window eighth_window
			\ ninth_window tenth_window next_tab previous_tab close_tab close_os_window
			\ move_tab_forward move_tab_backward set_tab_title next_layout kitten toggle_fullscreen
			\ toggle_maximized edit_config_file kitty_shell set_background_opacity load_config_file debug_config
			\ move_window neighboring_window

syn region kittyKeybind start=' ' end=' ' contains=kittyMod,kittyKey,kittyKeyComb contained nextgroup=kittyActionKW

syn keyword kittyMod contained ctrl alt shift cmd kitty_mod
syn match kittyKey '[A-Za-z0-9_]' contained
syn match kittyKeyComb '[+>]' contained

syn match kittyComment /^\s*#.*$/ contains=kittyTodo display
syn keyword	kittyTodo	contained TODO FIXME XXX
syn region	kittyString	start=+"+ skip=+\\\\\|\\"+ end=+"+ oneline
syn region	kittyString	start=+'+ skip=+\\\\\|\\'+ end=+'+ oneline

hi def link kittyOptions Keyword
hi def link kittyMap Keyword
hi def link kittyInvalidAction Error
hi def link kittyAction Keyword
hi def link kittyComment Comment
hi def link kittyKey Constant
hi def link kittyMod Keyword
hi def link kittyTodo	Todo
hi def link kittyString	String

let b:current_syntax = "kitty"
