#include UDF.ahk
#Include helper.ahk

ActiveID = 0

!1::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
Sleep 100
SendInput, /Введите ID подозреваемого:{space}
Sleep 50
Input, UserID, I L6 V, {Enter}

If ActiveID == 0
{
CustomColor3 = EEAA99

Gui +LastFound +AlwaysOnTop -Caption +ToolWindow 

Gui, Color, black

Gui, Font, s7

Gui, Font, cWhite

Gui, Font, w%Скорость1%0

GUI, ADD, TEXT,, ID = %UserID%

WinSet, TransColor, %CustomColor3% 180

Gui, Show, x5 y50 NoActivate, window.	
}

Else
{
Gui Destroy

CustomColor3 = EEAA99

Gui +LastFound +AlwaysOnTop -Caption +ToolWindow 

Gui, Color, black

Gui, Font, s7

Gui, Font, cWhite

Gui, Font, w%Скорость1%0

GUI, ADD, TEXT,, ID = %UserID%

WinSet, TransColor, %CustomColor3% 180

Gui, Show, x5 y50 NoActivate, window.
}
Return


!2::
SendChat("Здравия желаю, заместителем начальника ГАИ по работе с личным составом. Полковник полиции Валекус")
Return

!3::
If UserID < 1000
{
SendChat("/chase " + UserID)
}
Else
{
SendChat("/chaseid " + UserID)
}
Return

!4::
If UserID < 1000
{
SendChat("/deject " + UserID)
}
Else
{
SendChat("/dejectid " + UserID)
}
Return

!5::
SendChat("/cuff " + UserID)
Sleep 1200
SendChat("/frac " + UserID)
Sleep 400
SendInput {sc2}{sc2}
Sleep 300  
SendInput {sc5}{sc5}
Return

!6::
SendChat("/incar " + UserID)
Sleep 500
SendChat("/me открыл дверь автомобиля, посадил задержанного в автомобиль, пристегнул ремнем безопасности")
Return

!7::
SendChat("/m [ГАИ] Водитель, останавливаемся и прижимаемся к обочине")
Sleep 500
SendChat("/m [ГАИ] В случае неподчинения, я открываю огонь по колёсам")
Return

!8::
SendChat("/m [ГАИ] Водитель, уходим в другую полосу")
Sleep 500
SendChat("/m [ГАИ] Пропускаем спец.транспорт")
Return

!9::
SendChat("/me нажал на кнопку вкл/выкл проблесковых маячков")
Sleep 500
SendChat("/police")
Return

Numpad0::
SendChat("/chase")
Return

Numpad1::
SendChat("/frac " + UserID)
Return

:?:!права::
SendChat("Вы имеете право на отказ от дачи показаний против себя и своих близких.")
Sleep 1000
SendChat("Вы имеете на ознакомление со всеми протоколами, составленными при задержании.")
Sleep 1000
SendChat("Вы имеете право на адвоката, переводчика и медицинскую помощь. Вам они будут предоставлены в ИВС.")
Sleep 1000
SendChat("Вы имеете право на один телефонный звонок.")
Sleep 1000
SendChat("Если вы желаете обжаловать задержание, можете оставить жалобу на официальном портале области.")
Return


:?:!деп::
SendMessage, 0x50,, 0x4190419,, A
SendInput /d [ГАИ/] Говорит заместитель начальника ГАИ по НО. Полковник полиции Валекус. {left 71}
Return

:?:!сос::
SendChat("/r Докладывает полковник Валекус: выехал на вызов SOS.")
Return

:?:!сос1::
SendMessage, 0x50,, 0x4190419,, A
SendChat("/r Докладывает полковник Валекус: прибыл на вызов SOS.")
Return

:?:!угон::
SendChat("/r Докладывает полковник Валекус: выехал на вызов об автоугоне.")
Return

:?:!угон1::
SendChat("/r Докладывает полковник Валекус: прибыл на вызов об автоугоне.")
Return

:?:!выз::
SendChat("/r Докладывает полковник Валекус: реагирую на вызов от гражданского.")
Return

:?:!выз1::
SendChat("/r Докладывает полковник Валекус: прибыл на вызов от гражданского.")
Return

:?:!патруль::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /r Докладывает полковник Валекус: Начал патруль по маршруту  C-2, К-1.{left 10}
Return

:?:!патруль1::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /r Докладывает полковник Валекус: Продолжаю патруль по маршруту  C-2, К-1.{left 10}
Return

:?:!патруль2::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /r Докладывает полковник Валекус: Завершил патруль по маршруту  C-2, К-1.{left 10}
Return

:?:!пост::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /r Докладывает полковник Валекус: Заступил на стационарный пост  C-2, К-1.{left 10}
Return

:?:!пост1::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /r Докладывает полковник Валекус: Продолжаю стоять на стационарном посту  C-2, К-1.{left 10}
Return

:?:!пост2::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /r Докладывает полковник Валекус: Завершил дежурство на стационарном посту  C-2, К-1.{left 10}
Return

:?:!вк::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /r Докладывает полковник Валекус: Начал сопровождение военной колонны C-2, К-1.{left 6}
Return

:?:!вк1::
SendMessage, 0x50,, 0x4190419,, A
Sendinput, /r Докладывает полковник Валекус: Завершил сопровождение военной колонны C-2, К-1.{left 6}
Return

:?:!эв::
SendChat("/me прикрепил трос к бамперу автомобиля")
Return

:?:!об::
SendChat("/me надел чистые резиновые перчатки, начал производить личный досмотр человека напротив")
Return

:?:!уд::
SendChat("/me достал удостоверение из нагрудного кармана, показал в развернутом виде на уровне глаз, не передавая в руки")
Return

:?:!ар::
SendChat("/me позвал дежурного по рации")
Sleep, 500
SendChat("/do Дежурный вышел, после чего забрал задержанного и посадил в КПЗ.")
Return

:?:!ш::
SendChat("/me достал КПК авторизовался как полковник полиции, ввел данные гражданина с лицензий")
Sleep 500
SendChat("/me нашел личное дело, начал выписывать штраф")
Return

:?:!протокол::
Sleep 200
SendChat("/me взял бланк протокола и ручку и начал заполнять")
Sleep 1000
SendChat("/me вписал личные данные задержанного лица, обстоятельства и причины задержания, дату и время")
Sleep 1000
SendChat("/me вписал свои инициалы, поставил подпись")
Sleep 2000
SendChat("Расписываться в протоколе будете?")
Return

:?:!визиткадс::
sendChat("/me достал визитку из нагрудного кармана и передал человеку напротив")
Sleep 700
sendChat("/do На визитке написано: «com/users/abysmalrat7.")
Sleep 700
sendChat("/b Это дискорд. В браузере вбиваешь: «discord.», после вставляешь содержимое в кавычках выше.")
Sleep 700
sendChat("/b В ином случае, добавляешь в друзья по никнейму: «abysmalrat7».")
Return

:?:!визиткавк::
sendChat("/me достал визитку из нагрудного кармана и передал человеку напротив")
Sleep 700
sendChat("/do На визитке написано: «com/10kus».")
Sleep 700
sendChat("/b Это ВК. В браузере вбиваешь: «vk.», после вставляешь содержимое в кавычках выше.")
Sleep 700
sendChat("/b В ином случае, ищешь по id: «10kus».")
Return





flvu1 := False, flvu2 := False, flvu3 := False
flfp1 := False, flfp2 := False, flfp3 := False
current_doc := 0

:?:!ву::
{
    global current_doc, flvu1, flvu2, flvu3
    
    if (current_doc != 1)
    {
        CloseAllDocs()
        current_doc := 1
        flvu1 := True
        vu1(flvu1)
    }
    else
    {
        CloseAllDocs()
        current_doc := 0
    }
    Return
}

:?:!фп::
{
    global current_doc, flfp1, flfp2, flfp3
    
    if (current_doc != 2)
    {
        CloseAllDocs()
        current_doc := 2
        flfp1 := True
        fp1(flfp1)
    }
    else
    {
        CloseAllDocs()
        current_doc := 0
    }
    Return
}

PgUp::
{
    global current_doc
    if (current_doc == 1)
        NavigateVU("next")
    else if (current_doc == 2)
        NavigateFP("next")
    Return
}

PgDn::
{
    global current_doc
    if (current_doc == 1)
        NavigateVU("prev")
    else if (current_doc == 2)
        NavigateFP("prev")
    Return
}

NavigateVU(direction) {
    global flvu1, flvu2, flvu3
    
    if (flvu1) {
        flvu1 := False
        flvu2 := (direction == "next") ? True : False
        flvu3 := (direction == "prev") ? True : False
        if (flvu2){
            vu2(True)
        }
        if (flvu3){
            vu3(True)
        } 
    }
    else if (flvu2) {
        flvu2 := False
        flvu3 := (direction == "next") ? True : False
        flvu1 := (direction == "prev") ? True : False
        if (flvu3){
            vu3(True)
        }
        if (flvu1){
            vu1(True)
        }
    }
    else if (flvu3) {
        flvu3 := False
        flvu1 := (direction == "next") ? True : False
        flvu2 := (direction == "prev") ? True : False
        if (flvu1){
            vu1(True)
        }
        if (flvu2){
            vu2(True)
        }
    }
}

NavigateFP(direction) {
    global flfp1, flfp2, flfp3
    
    if (flfp1) {
        flfp1 := False
        flfp2 := (direction == "next") ? True : False
        flfp3 := (direction == "prev") ? True : False
        if (flfp2){
            fp2(True)
        }
        if (flfp3){
            fp3(True)
        }
    }
    else if (flfp2) {
        flfp2 := False
        flfp3 := (direction == "next") ? True : False
        flfp1 := (direction == "prev") ? True : False
        if (flfp3){
            fp3(True)
        }
        if (flfp1){
            fp1(True)
        }
    }
    else if (flfp3) {
        flfp3 := False
        flfp1 := (direction == "next") ? True : False
        flfp2 := (direction == "prev") ? True : False
        if (flfp1){
            fp1(True)
        }
        if (flfp2){
            fp2(True)
        }
    }
}

CloseAllDocs() {
    global
    Gui Destroy
    flvu1 := flvu2 := flvu3 := False
    flfp1 := flfp2 := flfp3 := False
}


:?:!фп1::Return
:?:!фп2::Return
:?:!фп3::Return

!X::
{
    State4 := !State4
    help(State4)    
    Return
}