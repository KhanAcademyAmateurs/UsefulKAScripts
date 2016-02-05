repeat
	tell application "Safari"
		if the text of the front document contains "minute?" then close the current tab of window 1
		
		set done to false
		
		set titles to get URL of every tab of window 1
		
		repeat with theTitle in titles
			if theTitle contains "programming" then set done to true
		end repeat
		
		if not done then tell application "Safari" to tell the first window to set the current tab to make new tab with properties {URL:"https://www.khanacademy.org/computing/computer-programming/projectfeedback/next-eval"}
		
		delay 1
	end tell
end repeat
