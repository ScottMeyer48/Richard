`n

If (len == mis) && (buyItemPrice <= buyUserPrice), " <<< BUY >>> "

If (A_GuiEvent <> "DoubleClick") && (Ctrl := Controls[A_GuiControl])

if WinExist("Gui2_Affiche_Memo") OR WinExist("Gui3_Affiche_Application")

if EtatWheelUp <> %Check_EtatWheelUp%                    ; La roulette de la souris HAUT � �tait tourn�e

If not (VG_Couleur_Gui = "error" OR VG_Couleur_Gui ="" )

if (Options != "" AND Options != "xCenter" AND Options != "yCenter")

If ( A_Index = Nb_de_Fichier ) && ( Info <> "" )

if (Test_Date_Modification = ERROR) OR !FileExist("test.txt") 
if (Test_Date_Modification = ERROR) OR !FileExist(A_LoopField) 
if (Test_Date_Modification = ERROR) OR !FileExist(A_ScriptDir "\Backup\" A_LoopField) 

if((A_PtrSize=8&&A_IsCompiled="")||!A_IsUnicode){ ;32 bit=4  ;64 bit=8
    SplitPath,A_AhkPath,,dir
    if(!FileExist(correct:=dir "\AutoHotkeyU32.exe")){
	    MsgBox error
	    ExitApp
    }
    
if !FileExist(ListeBaseFibre_duJour)	; COPIE TEMPORAIRE EN LOCAL POUR EVITER LES ACCESS SERVEUR

;~ ################### CARACTERE ECHAPEMENT - DOUBLE "" ###################
""1""															; pour faire "1"
Fichier_Easydoc_Modifie .="<onglet index=""" (Num_New_Onglets_Gespot + A_Index) """" " name=""gespot"" size=""1260"">`n"  ; ca donne : <onglet index="4" name="gespot" size="1260">
;~ ################### VARIABLE MULTI LIGNES ###################
Var_Text =
(
Ligne 1
Ligne 2
)
;~ ################### BLOQUER LES ENTREES CLAVIER OU SOURIS ###################
BlockInput, Mode

;~ ################### TOUCHER BLOQUER EN REPETITION ###################
q::
	Send {Blind}{q up}
	return

q up::
	Send {Blind}{q down}
	return

;~ ###################  ARRAY  ###################

List_A_Traiter = TOTO|TATA|PIPI
Array_Liste_Nom_Repertoire=
Array_compteur = 0
Loop, Parse, List_A_Traiter, |											; s�pare dans la liste "List_A_Traiter" � chaque retour � la ligne
{
	Array_compteur += 1                                                 ; Keep track of how many items are in the array.
	Array_Liste_Nom_Repertoire%Array_compteur% := A_LoopField  			; Store this line in the next array element.
    msgbox % "IN " . Array_Liste_Nom_Repertoire%Array_compteur%
}
nombre = 1
Var := Array_Liste_Nom_Repertoire%nombre%
msgbox % "A " . Var " B " . Array_Liste_Nom_Repertoire2 " C " . Array_Liste_Nom_Repertoire3
;	GuiControl,	, Dossier_en_cours		, % Array_Liste_Nom_Repertoire%Dossier_Suivant% 


;~ #######################################################
	SetFormat, Float, 03.0		; PAS DE DECIMAL, 3 CHRIFFRES COMPLETER PAR DES ZERO UNIQUEMENT SI LA VARIABLE COMPORTE DEJA LES 3 CHIFFRES IL FAUT DONC RAJOUTER DES ZERO AVEC "var += 0.0000"
	var_Tmp := 1
	var_Tmp += 0.000000		
    msgbox, % var_Tmp
;~ #######################################################
loop, parse, Saisi_en_cours,|	; METS AU DEBUT DE "Saisi_en_cours" LE NOM DU BOUTON EN COURS POUR LE "BOUTON VALIDER" POUR SAVOIR : QUELLE EST LA DERNIERE ACTION DE L'UTILISATEUR
{
    if 1_Fois_Mettre_au_Debut 	=
    {
        Tri_Saisi_en_cours 		= ORIGINE
        1_Fois_Mettre_au_Debut 	= fin
    }
    if A_LoopField = ORIGINE
        continue
        
    Tri_Saisi_en_cours .="|" A_LoopField
}
Saisi_en_cours 			= %Tri_Saisi_en_cours%
1_Fois_Mettre_au_Debut 	=
; ################### FONCTION ###################

Debug(Text)
{
   MsgBox, %Text%
}
TITLE :="Hello"
gui, MyMainWindow:+resize
Gui, MyMainWindow:Show , w400 h400, %TITLE%

GuiSize()
{
     Debug("Hello :(")
     Return
}
; ################### HOTKEY EXEMPLE ###################
Hotkey, WheelUp         , Hotkey_ApercuWindows_WheelUp
Hotkey, ^WheelDown      , Hotkey_ApercuWindows_^WheelDown
IfWinActive, Visionneuse de photos Windows   ; Win7
{
  Hotkey, WheelUp         , On
  Hotkey, ^WheelDown      , On
}
Else
{
  Hotkey, WheelUp         , Off
  Hotkey, ^WheelDown      , Off
}
Return
Hotkey_ApercuWindows_WheelUp:
send,{LEFT}
return

Hotkey_ApercuWindows_^WheelDown:
Send,{NumPadSub} 
return
; ################### HOTKEY ###################

;~ ????????????????????????????????????????????????
MsgBox, % user() . user("x") "-" user("y") "-" user("z")
MsgBox, % TeaDrink(1234).x "-" TeaDrink(1234).y "-" TeaDrink(1234).z

TeaDrink(Hwnd)
{
msgbox, TeaDrink definig xyz!
x := 1
y := 2
z := 3
Return {x: x, y: y, z:z}
}

User(Hwnd := "")
{
static x,y,z

if (Hwnd = "x" or Hwnd = "y" or Hwnd = "z")
return, (%Hwnd%)
msgbox, User definig xyz!
x := "A"
y := "B"
z := "C"
}