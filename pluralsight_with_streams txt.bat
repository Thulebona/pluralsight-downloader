@echo off
set /p p_username="Enter pluralsight username: " 
set /p p_password="password: "
@echo on

FOR /F "eol=#" %%a IN (streams.txt) DO (
.\youtube-dl.exe ^
--username %p_username% ^
--password %p_password% ^
%%a ^
-o "C:/Users/Net2/Videos/Pluralsight/%%(playlist)s/%%(chapter_number)02d - %%(chapter)s/%%(playlist_index)02d - %%(title)s.%%(ext)s" ^
--sleep-interval 35 ^
--max-sleep-interval 120 ^
--sub-lang en ^
--sub-format srt ^
--write-sub
)

