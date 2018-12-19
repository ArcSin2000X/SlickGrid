@echo off

REM curl -d '{"NodeName":"NodeMAA"}' -H "Content-Type: application/json" http://localhost:3000/setStatsData

curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"username":"xyz","password":"xyz"}' http://localhost:3000/setStatsData
