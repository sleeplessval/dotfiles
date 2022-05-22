#!/usr/bin/python
from i3ipc import Connection, Event

i3 = Connection()

base = '(box :class "workspace" :orientation "h" :spacing 8 :space-evenly false'

def get_workspaces(_0, _1):
	response = i3.get_workspaces()
	output = base
	for ws in response:
		classes = "ws-btn"
		scale = ""
		if(ws.focused):
			scale = '(scale :class "wsbar" :max 100 :min 100)'
		if(ws.urgent):
			classes += " urgent"
		element = f'(box :orientation "v" :space-evenly false (button :vexpand true :class "{classes}" :onclick "i3-msg workspace {ws.num}" "{ws.num}"){scale})'
		output += f' {element}'
	print(f"{output})")

get_workspaces(None, None)
i3.on(Event.WORKSPACE_FOCUS, get_workspaces)
i3.main()
