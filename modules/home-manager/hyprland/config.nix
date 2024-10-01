{ config, inputs, pkgs, ... }:

{
  wayland.windowManager.hyprland.settings = {


    monitor = [
        "DP-1, 1920x1080, 0x0, 1"
        "DP-3, 1920x1080, 1920x0, 1"
        "DP-2, 1920x1080, 3840x0, 1"

    ];

    env = [
        "XCURSOR_SIZE,12"
        "HYPRCURSOR_SIZE,12"
        "LIBVA_DRIVER_NAME,nvidia"
        "XDG_SESSION_TYPE,wayland"
       # "XDG_CURRENT_DESKTOP,Hyprland"
       # "XDG_SESSION_DESKTOP,Hyprland"
        "GBM_BACKEND,nvidia-drm"
        "__GLX_VENDOR_LIBRARY_NAME,nvidia"
        "ELECTRON_OZONE_PLATFORM_HINT,auto"
        "NVD_BACKEND,direct"
    ];
    input = {
      kb_layout = "us";

      follow_mouse = 1;
      accel_profile = "flat";
      scroll_method = "on_button_down";

      touchpad = {
        natural_scroll = true;
        scroll_factor = 0.8;
        tap-to-click = false;
      };
    };
    general = {
      gaps_in = 0;
      gaps_out = 0;
      border_size = 1;

      layout = "dwindle";
    };
    xwayland = {
      force_zero_scaling = true;
    };
    misc = {
      force_default_wallpaper = 0;
      disable_hyprland_logo = true;
      disable_splash_rendering = true;

      disable_autoreload = true;
      middle_click_paste = false;
      focus_on_activate = true;

      animate_manual_resizes = true;
      animate_mouse_windowdragging = true;

      mouse_move_enables_dpms = false;
      key_press_enables_dpms = true;

      new_window_takes_over_fullscreen = 1;
      exit_window_retains_fullscreen = true;
    };
    cursor = {
      allow_dumb_copy = true;
    };
    render = {
      explicit_sync = 1;
      explicit_sync_kms = 1;
    };
    opengl.nvidia_anti_flicker = true;
    decoration = {
      rounding = 0;

      blur.enabled = false;
      drop_shadow = false;
    };
    animations = {
      enabled = true;

      bezier = "myBezier, 0.05, 0.9, 0.1, 1.1";

      animation = [
        "windows, 1, 5, myBezier"
        "windowsOut, 1, 5, default, popin 80%"
        "windowsMove, 1, 5, default, popin 80%"
        "fade, 1, 5, default"
        "border, 1, 5, default"
        "borderangle, 0, 8, default"
        # "workspaces, 1, 5, myBezier"
        # "specialWorkspace, 1, 5, myBezier, slidevert"
        "workspaces, 0"
        "specialWorkspace, 0"
      ];
    };
    dwindle = {
      pseudotile = true;
      force_split = 2;
      special_scale_factor = 0.95;
    };
    gestures = {
      workspace_swipe = true;
      workspace_swipe_direction_lock = false;
      workspace_swipe_cancel_ratio = 0.15;
    };
    binds = {
      allow_workspace_cycles = true;
      workspace_center_on = 1;
    };
    windowrule = [
    ];
    windowrulev2 = [
      # These 2 should fix floating windows
      #"float,class:^(kitty)$,title:^(kitty)$"
    ];
    workspace = [
     
    #add workspace stuff here

         ];
  };
}
