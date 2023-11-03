recording := false
keys := []

F1::StartRecording()
F2::StopRecording()
F3::Playback()


StartRecording() {
    global recording, keys
    recording := true
    keys := []
    return
}

StopRecording() {
    global recording
    recording := false
    return
}

Playback() {
    global keys
    Loop keys.Length
    {
        SendInput keys[A_Index]
        Sleep 10
    }
    return
}

CaptureAllKeys() {
    global recording, keys
    if (recording)
    {
        key := GetKeyStr()
        keys.Push(key)
    }
    return
}

GetKeyStr()
{
    keyStr := ""
    if GetKeyState("Ctrl")
        keyStr := keyStr . "^"
    if GetKeyState("Alt")
        keyStr := keyStr . "!"
    if GetKeyState("Shift")
        keyStr := keyStr . "+"
    if GetKeyState("LWin") || GetKeyState("RWin")
        keyStr := keyStr . "#"

    if (SubStr(A_ThisHotkey, 3) = "Enter")
    {
        key := "{Enter}"
    }
    else if (SubStr(A_ThisHotkey, 3) = "Left")
    {
        key := "{Left}"
    }
    else if (SubStr(A_ThisHotkey, 3) = "Right")
    {
        key := "{Right}"
    }
    else if (SubStr(A_ThisHotkey, 3) = "Up")
    {
        key := "{Up}"
    }
    else if (SubStr(A_ThisHotkey, 3) = "Down")
    {
        key := "{Down}"
    }  
    else if (SubStr(A_ThisHotkey, 3) = "Backspace")
    {
        key := "{Backspace}"
    }
    else if (SubStr(A_ThisHotkey, 3) = "Delete")
    {
        key := "{Delete}"
    }
    else if (SubStr(A_ThisHotkey, 3) = "Home")
    {
        key := "{Home}"
    }
    else if (SubStr(A_ThisHotkey, 3) = "End")
    {
        key := "{End}"
    }
    else if (SubStr(A_ThisHotkey, 3) = "PgUp")
    {
        key := "{PgUp}"
    }
    else if (SubStr(A_ThisHotkey, 3) = "PgDn")
    {
        key := "{PgDn}"
    }
    else if (SubStr(A_ThisHotkey, 3) = "Numpad0")
    {
        key := "{Numpad0}"
    }
    else if (SubStr(A_ThisHotkey, 3) = "Numpad1")
    {
        key := "{Numpad1}"
    }
    else if (SubStr(A_ThisHotkey, 3) = "Numpad2")
    {
        key := "{Numpad2}"
    }
    else if (SubStr(A_ThisHotkey, 3) = "Numpad3")
    {
        key := "{Numpad3}"
    }
    else if (SubStr(A_ThisHotkey, 3) = "Numpad4")
    {
        key := "{Numpad4}"
    }
    else if (SubStr(A_ThisHotkey, 3) = "Numpad5")
    {
        key := "{Numpad5}"
    }
    else if (SubStr(A_ThisHotkey, 3) = "Numpad6")
    {
        key := "{Numpad6}"
    }
    else if (SubStr(A_ThisHotkey, 3) = "Numpad7")
    {
        key := "{Numpad7}"
    }
    else if (SubStr(A_ThisHotkey, 3) = "Numpad8")
    {
        key := "{Numpad8}"
    }
    else if (SubStr(A_ThisHotkey, 3) = "Numpad9")
    {
        key := "{Numpad9}"
    }
    else if (SubStr(A_ThisHotkey, 3) = "NumpadDot")
    {
        key := "{NumpadDot}"
    }
    else if (SubStr(A_ThisHotkey, 3) = "NumpadEnter")
    {
        key := "{NumpadEnter}"
    }
    else if (SubStr(A_ThisHotkey, 3) = "Tab")
    {
        key := "{Tab}"
    }
    else if (SubStr(A_ThisHotkey, 3) = "Space")
    {
        key := "{Space}"
    }
                    
    else
    {
        key := SubStr(A_ThisHotkey, 3)
    }
    
    return keyStr . key
}


; *::CaptureAllKeys()
~*a::CaptureAllKeys()
~*b::CaptureAllKeys()
~*c::CaptureAllKeys()
~*d::CaptureAllKeys()
~*e::CaptureAllKeys()
~*f::CaptureAllKeys()
~*g::CaptureAllKeys()
~*h::CaptureAllKeys()
~*i::CaptureAllKeys()
~*j::CaptureAllKeys()
~*k::CaptureAllKeys()
~*l::CaptureAllKeys()
~*m::CaptureAllKeys()
~*n::CaptureAllKeys()
~*o::CaptureAllKeys()
~*p::CaptureAllKeys()
~*q::CaptureAllKeys()
~*r::CaptureAllKeys()
~*s::CaptureAllKeys()
~*t::CaptureAllKeys()
~*u::CaptureAllKeys()
~*v::CaptureAllKeys()
~*w::CaptureAllKeys()
~*x::CaptureAllKeys()
~*y::CaptureAllKeys()
~*z::CaptureAllKeys()

~*0::CaptureAllKeys()
~*1::CaptureAllKeys()
~*2::CaptureAllKeys()
~*3::CaptureAllKeys()
~*4::CaptureAllKeys()
~*5::CaptureAllKeys()
~*6::CaptureAllKeys()
~*7::CaptureAllKeys()
~*8::CaptureAllKeys()
~*9::CaptureAllKeys()

~*`::CaptureAllKeys()  ; バッククォート
~*~::CaptureAllKeys()  ; チルダ
~*!::CaptureAllKeys()  ; エクスクラメーションマーク
~*@::CaptureAllKeys()  ; アットマーク
~*#::CaptureAllKeys()  ; ハッシュ
~*$::CaptureAllKeys()  ; ドル
~*%::CaptureAllKeys()  ; パーセント
~*^::CaptureAllKeys()  ; キャレット
~*&::CaptureAllKeys()  ; アンパサンド
~*(::CaptureAllKeys()  ; 左括弧
~*)::CaptureAllKeys()  ; 右括弧
~*-::CaptureAllKeys()  ; ハイフン
~*_::CaptureAllKeys()  ; アンダースコア
~*+::CaptureAllKeys()  ; プラス
~*=::CaptureAllKeys()  ; イコール
~*{::CaptureAllKeys()  ; 左波括弧
~*}::CaptureAllKeys()  ; 右波括弧
~*[::CaptureAllKeys()  ; 左角括弧
~*]::CaptureAllKeys()  ; 右角括弧
~*|::CaptureAllKeys()  ; パイプ
~*\::CaptureAllKeys()  ; バックスラッシュ
~*`;::CaptureAllKeys()  ; セミコロン
; ~*:::CaptureAllKeys()  ; コロン
~*'::CaptureAllKeys()  ; シングルクォート
~*"::CaptureAllKeys()  ; ダブルクォート
~*,::CaptureAllKeys()  ; コンマ
~*<::CaptureAllKeys()  ; 小なり記号
~*.::CaptureAllKeys()  ; ピリオド
~*>::CaptureAllKeys()  ; 大なり記号
~*/::CaptureAllKeys()  ; スラッシュ
~*?::CaptureAllKeys()  ; クエスチョンマーク

~*Left::CaptureAllKeys()  ; 左矢印キー
~*Right::CaptureAllKeys()  ; 右矢印キー
~*Up::CaptureAllKeys()  ; 上矢印キー
~*Down::CaptureAllKeys()  ; 下矢印キー
~*Enter::CaptureAllKeys()  ; エンターキー

~*Backspace::CaptureAllKeys()  ; バックスペースキー
~*Delete::CaptureAllKeys()  ; デリートキー
~*Home::CaptureAllKeys()  ; ホームキー
~*End::CaptureAllKeys()  ; エンドキー
~*PgUp::CaptureAllKeys()  ; ページアップキー
~*PgDn::CaptureAllKeys()  ; ページダウンキー

; テンキー
~*Numpad0::CaptureAllKeys()  ; テンキー 0
~*Numpad1::CaptureAllKeys()  ; テンキー 1
~*Numpad2::CaptureAllKeys()  ; テンキー 2
~*Numpad3::CaptureAllKeys()  ; テンキー 3
~*Numpad4::CaptureAllKeys()  ; テンキー 4
~*Numpad5::CaptureAllKeys()  ; テンキー 5
~*Numpad6::CaptureAllKeys()  ; テンキー 6
~*Numpad7::CaptureAllKeys()  ; テンキー 7
~*Numpad8::CaptureAllKeys()  ; テンキー 8
~*Numpad9::CaptureAllKeys()  ; テンキー 9
~*NumpadDot::CaptureAllKeys()  ; テンキー ドット
~*NumpadEnter::CaptureAllKeys()  ; テンキー エンター

~*Tab::CaptureAllKeys()  ; タブキー
~*Space::CaptureAllKeys()  ; スペースキー


