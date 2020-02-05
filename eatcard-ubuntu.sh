#!/bin/bash

# Update and upgrade OS
apt-get update && apt-get -y upgrade
# Install Chromium browser
apt-get install chromium-browser -y 

printf "
[Desktop Entry]
Version=1.0
Name=EatCard App
# Only KDE 4 seems to use GenericName, so we reuse the KDE strings.
# From Ubuntu's language-pack-kde-XX-base packages, version 9.04-20090413.
Exec=/usr/bin/chromium-browser --disable-translate --disable-crash-reporter --kiosk https://app.eatcard.nl/account/login
Terminal=false
Icon=whatsapp
Type=Application
Categories=Network;WebBrowser;
MimeType=text/html;text/xml;application/xhtml_xml;image/webp;x-scheme-handler/http;x-scheme-handler/https;x-scheme-handler/ftp;
Actions=new-window;new-private-window;

[Desktop Action new-window]
Name=New Window
Name[am]=አዲስ መስኮት
Name[ar]=نافذة جديدة
Name[bg]=Нов прозорец
Name[bn]=নতুন উইন্ডো
Name[ca]=Finestra nova
Name[cs]=Nové okno
Name[da]=Nyt vindue
Name[de]=Neues Fenster
Name[el]=Νέο Παράθυρο
Name[en_GB]=New Window
Name[es]=Nueva ventana
Name[et]=Uus aken
Name[fa]=پنجره جدید
Name[fi]=Uusi ikkuna
Name[fil]=New Window
Name[fr]=Nouvelle fenêtre
Name[gu]=નવી વિંડો
Name[hi]=नई विंडो
Name[hr]=Novi prozor
Name[hu]=Új ablak
Name[id]=Jendela Baru
Name[it]=Nuova finestra
Name[iw]=חלון חדש
Name[ja]=新規ウインドウ
Name[kn]=ಹೊಸ ವಿಂಡೊ
Name[ko]=새 창
Name[lt]=Naujas langas
Name[lv]=Jauns logs
Name[ml]=പുതിയ വിന്‍ഡോ
Name[mr]=नवीन विंडो
Name[nl]=Nieuw venster
Name[no]=Nytt vindu
Name[pl]=Nowe okno
Name[pt]=Nova janela
Name[pt_BR]=Nova janela
Name[ro]=Fereastră nouă
Name[ru]=Новое окно
Name[sk]=Nové okno
Name[sl]=Novo okno
Name[sr]=Нови прозор
Name[sv]=Nytt fönster
Name[sw]=Dirisha Jipya
Name[ta]=புதிய சாளரம்
Name[te]=క్రొత్త విండో
Name[th]=หน้าต่างใหม่
Name[tr]=Yeni Pencere
Name[uk]=Нове вікно
Name[vi]=Cửa sổ Mới
Name[zh_CN]=新建窗口
Name[zh_TW]=開新視窗
Exec=/usr/bin/chromium

[Desktop Action new-private-window]
Name=New Incognito Window
Name[ar]=نافذة جديدة للتصفح المتخفي
Name[bg]=Нов прозорец „инкогнито“
Name[bn]=নতুন ছদ্মবেশী উইন্ডো
Name[ca]=Finestra d'incògnit nova
Name[cs]=Nové anonymní okno
Name[da]=Nyt inkognitovindue
Name[de]=Neues Inkognito-Fenster
Name[el]=Νέο παράθυρο για ανώνυμη περιήγηση
Name[en_GB]=New Incognito window
Name[es]=Nueva ventana de incógnito
Name[et]=Uus inkognito aken
Name[fa]=پنجره جدید حالت ناشناس
Name[fi]=Uusi incognito-ikkuna
Name[fil]=Bagong Incognito window
Name[fr]=Nouvelle fenêtre de navigation privée
Name[gu]=નવી છુપી વિંડો
Name[hi]=नई गुप्त विंडो
Name[hr]=Novi anoniman prozor
Name[hu]=Új Inkognitóablak
Name[id]=Jendela Penyamaran baru
Name[it]=Nuova finestra di navigazione in incognito
Name[iw]=חלון חדש לגלישה בסתר
Name[ja]=新しいシークレット ウィンドウ
Name[kn]=ಹೊಸ ಅಜ್ಞಾತ ವಿಂಡೋ
Name[ko]=새 시크릿 창
Name[lt]=Naujas inkognito langas
Name[lv]=Jauns inkognito režīma logs
Name[ml]=പുതിയ വേഷ പ്രച്ഛന്ന വിന്‍ഡോ
Name[mr]=नवीन गुप्त विंडो
Name[nl]=Nieuw incognitovenster
Name[no]=Nytt inkognitovindu
Name[pl]=Nowe okno incognito
Name[pt]=Nova janela de navegação anónima
Name[pt_BR]=Nova janela anônima
Name[ro]=Fereastră nouă incognito
Name[ru]=Новое окно в режиме инкогнито
Name[sk]=Nové okno inkognito
Name[sl]=Novo okno brez beleženja zgodovine
Name[sr]=Нови прозор за прегледање без архивирања
Name[sv]=Nytt inkognitofönster
Name[ta]=புதிய மறைநிலைச் சாளரம்
Name[te]=క్రొత్త అజ్ఞాత విండో
Name[th]=หน้าต่างใหม่ที่ไม่ระบุตัวตน
Name[tr]=Yeni Gizli pencere
Name[uk]=Нове вікно в режимі анонімного перегляду
Name[vi]=Cửa sổ ẩn danh mới
Name[zh_CN]=新建隐身窗口
Name[zh_TW]=新增無痕式視窗
Exec=/usr/bin/chromium --incognito
" > /usr/share/applications/eatcard.desktop

printf "

[X] - OS update and software installed

"