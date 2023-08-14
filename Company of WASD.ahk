#SingleInstance Force

CoordMode, Mouse, Relative

#IfWinActive Company Of Heroes
	w::up
	a::left
	s::down
	d::right
	q::
		BlockInput, MouseMove
		WinGetActiveStats, Title, Width, Height, X, Y
		MouseMove, Width / 2, Height / 2, 0
		Send {Alt Down}
		While (GetKeyState("q","P"))
		{
			MouseMove, 100, 0, 0, R
		}
		Send {Alt Up}
		BlockInput, MouseMoveOff
	Return
	e::
		BlockInput, MouseMove
		WinGetActiveStats, Title, Width, Height, X, Y
		MouseMove, Width / 2, Height / 2, 0
		Send {Alt Down}
		While (GetKeyState("e","P"))
		{
			MouseMove, -100, 0, 0, R
		}
		Send {Alt Up}
		BlockInput, MouseMoveOff
	Return
	r::e
	t::r
	g::a
	b::s
	n::d
	m::w
#IfWinActive