#!/usr/bin/env bash

# Add any extensions/deps with a package.json in their /assets directory here
# NOTE: any LV Hooks should also be added to ./deps.hooks.js
# TODO: make this more configurable? ie. autogenerate from active extensions with JS assets

# Milkdown replaced the Quill and CK editors (their hooks are commented out in deps.hooks.js), and its composer lazy-loads the milkdown_editor.js bundle built from here
# DEPS='iconify_ex bonfire_ui_common bonfire_editor_quill bonfire_editor_ck bonfire_geolocate bonfire_ui_kanban bonfire_ui_reactions'
DEPS='iconify_ex bonfire_ui_common bonfire_editor_milkdown bonfire_geolocate bonfire_ui_kanban bonfire_ui_reactions'
# 

chmod +x ./js-deps-get.sh
./js-deps-get.sh "$DEPS" $@
