#!/bin/bash
for i in {1..10}
do
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMAA","Field":"header","Value":"20"}' http://localhost:3000/setStatsData
    sleep .5
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMAA","Field":"header","Value":"20"}' http://localhost:3000/setStatsData
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMAC","Field":"header","Value":"20"}' http://localhost:3000/setStatsData
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMAE","Field":"header","Value":"20"}' http://localhost:3000/setStatsData
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMAF","Field":"wallet","Value":"20"}' http://localhost:3000/setStatsData
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMAG","Field":"header","Value":"20"}' http://localhost:3000/setStatsData
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMBA","Field":"header","Value":"20"}' http://localhost:3000/setStatsData
    sleep .5
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMBB","Field":"consensus","Value":"20"}' http://localhost:3000/setStatsData
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMAA","Field":"header","Value":"20"}' http://localhost:3000/setStatsData
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMAA","Field":"consensus","Value":"20"}' http://localhost:3000/setStatsData
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMAA","Field":"header","Value":"20"}' http://localhost:3000/setStatsData
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMAA","Field":"header","Value":"20"}' http://localhost:3000/setStatsData
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMAA","Field":"header","Value":"20"}' http://localhost:3000/setStatsData
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMAA","Field":"header","Value":"20"}' http://localhost:3000/setStatsData
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMAB","Field":"consensus","Value":"30"}' http://localhost:3000/setStatsData
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMAA","Field":"header","Value":"20"}' http://localhost:3000/setStatsData
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMAA","Field":"header","Value":"20"}' http://localhost:3000/setStatsData
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMAA","Field":"wallet","Value":"20"}' http://localhost:3000/setStatsData
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMAA","Field":"consensus","Value":"20"}' http://localhost:3000/setStatsData
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMAA","Field":"header","Value":"20"}' http://localhost:3000/setStatsData
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMAA","Field":"header","Value":"20"}' http://localhost:3000/setStatsData
    sleep .5
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMCX","Field":"header","Value":"20"}' http://localhost:3000/setStatsData
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeSAA","Field":"consensus","Value":"20"}' http://localhost:3000/setStatsData
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeSAB","Field":"header","Value":"20"}' http://localhost:3000/setStatsData
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeSAD","Field":"header","Value":"20"}' http://localhost:3000/setStatsData
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMAE","Field":"consensus","Value":"20"}' http://localhost:3000/setStatsData
    sleep .5
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMAA","Field":"header","Value":"20"}' http://localhost:3000/setStatsData
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMAA","Field":"header","Value":"21"}' http://localhost:3000/setStatsData
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMAA","Field":"consensus","Value":"22"}' http://localhost:3000/setStatsData
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMAA","Field":"header","Value":"33"}' http://localhost:3000/setStatsData
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMAA","Field":"consensus","Value":"44"}' http://localhost:3000/setStatsData
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMAA","Field":"header","Value":"55"}' http://localhost:3000/setStatsData
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMAA","Field":"wallet","Value":"66"}' http://localhost:3000/setStatsData
    curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"NodeName":"NodeMAA","Field":"header","Value":"77"}' http://localhost:3000/setStatsData
done