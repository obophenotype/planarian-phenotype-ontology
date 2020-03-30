#!/usr/env/python3
import json
with open('sheets.json') as f:
  data = json.load(f)
# Output: {'name': 'Bob', 'languages': ['English', 'Fench']}
for grid in data['sheets']:
  sheetID = grid['properties']['sheetId']
  title   = grid['properties']['title']
  if title not in ['abnormalOther','Index','notes']:
   #  print(sheetID,title,sep="\t")
   print(sheetID)

