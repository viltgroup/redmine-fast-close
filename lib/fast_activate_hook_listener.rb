# frozen_string_literal: true

# Hook listener that injects the fast-activate script into the admin users list.
# The script adds an Activate entry to the row actions dropdown of users still pending
# activation, so they no longer need to be opened one by one.
class FastActivateHookListener < Redmine::Hook::ViewListener
  render_on :view_users_sidebar_queries_bottom,
    partial: "hooks/fast_activate_menu"
end
