#NoEnv 
SetTitleMatchMode 2
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetBatchLines, -1

IniRead, Lien, PratiqueAHK.ini, pas_tiliser, Lien

SetTimer,SCRIPT_SET_TIMER,300

Menu, Tray, Icon, d:\CENTER\DOCUMENTS de Scott\PROGRAMMATION\AHK\PERSO\Ressource\Images\IconeVert.ico

SCRIPT_SET_TIMER:
{
; FERME LA FENETRE D'AVERTISSEMENT DE WINDOWS 
IfWinExist,Fichier ouvert - Avertissement de sécurité                           
{
  WinActivate ,Fichier ouvert - Avertissement de sécurité
  Send,!e
}
;ControlClick ,&Exécuter,Fichier ouvert - Avertissement de sécurité,, LEFT,1
;~ ControlClick ,&Oui,,Il est possible que cette page possède un défaut de sécurité non spécifié. Souhaitez-vous continuer ?, LEFT,1
;~ WinClose, Notifier de Avira Free Antivirus
return
}

;~  IMAGE SUIVANTE / PRECEDANTE AVEC LA ROULETTRE SUR LE VISIONNER D'IMAGE DE WINDOWS
{
#IfWinActive, Visionneuse de photos Windows		
WheelUp::LEFT
WheelDown::RIGHT
^WheelUp::NumPadAdd
^WheelDown::NumPadSub 
#IfWinActive
return
}

;~ SciTE4AutoHotkey EMPECHER [CTRL + W] (qui fermer l'onglet en cours)
{
#IfWinActive, ahk_class SciTEWindow		
^w::
#IfWinActive
return
}
;~ INKSCAPE EMPECHER DE ZOOMER AVEC + ET -
{
#IfWinActive, ahk_class gdkWindowToplevel		
NumpadAdd::+
NumpadSub::-
#IfWinActive
return
}

;~ LANCER EXEGO AVEC LE BOUTON "SUIVANT" DE LA SOURIS
;~ {
;~ XButton2::                                       
;~ send, #w
;~ return
;~ }

{
+!^XButton1::
ToolTip, 2 sec
run,%Lien%
;~ run, "\\192.168.100.201\sys\Q-dir portable\Q-Dir.exe"
Sleep, 2000
ToolTip
Return
}

;~ INSERER LIEN UPLOAD
{
^²::
Send http://atelierludique.free.fr/000/UPLOAD/
return
}

; FERMER TELECHARGEMENT CHROME
{
^<::     
MouseGetPos, XXX, YYY
MouseClick, Left , 1903 , 1007
MouseMove, %XXX%, %YYY%w
return
}

; Q-Dir
{
²::     
IfWinExist, Q-Dir
{
	IfWinActive , Q-Dir
		WinMinimize , Q-Dir
	Else
		WinActivate , Q-Dir
}
Else
	Run, E:\PORTABLE\UTILS\Q-Dir_portable_6_71\Q-Dir.exe
Return	
}

^+F12::Reload

