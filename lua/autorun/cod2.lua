--ppsh_cod2---------------------------------------------------------------

sound.Add({
	name = 			"cod2_ppsh.Single",			// <-- Sound Name That gets called for
	channel = 		CHAN_USER_BASE +10,
	volume = 		1.0,
	sound = 			"weapons/ppsh/fire/wpnfire_ppsh_plyr_blnc_ed3.wav"	// <-- Sound Path
})

sound.Add(
{
    name = "cod2.ppsh_magout",
    channel = CHAN_AUTO,
    volume = 1.0,
    level = 65,
    sound = "weapons/ppsh/reolads/out.wav"
})

sound.Add(
{
    name = "cod2.ppsh_magin",
    channel = CHAN_AUTO,
    volume = 1.0,
    level = 65,
    sound = "weapons/ppsh/reolads/in2.wav"
})

sound.Add(
{
    name = "cod2.ppsh_boltpull",
    channel = CHAN_AUTO,
    volume = 1.0,
    level = 65,
    sound = "weapons/ppsh/reolads/pull.wav"
})