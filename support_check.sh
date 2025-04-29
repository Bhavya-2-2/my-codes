#!/bin/bash

echo "=============================="
echo "🔎 Checking app.log for errors"
echo "=============================="
grep "ERROR" app.log || echo "No errors found in app.log"

echo ""
echo "=============================="
echo "⚙️ Checking if cron service is active"
echo "=============================="
systemctl is-active cron

echo ""
echo "=============================="
echo "📂 Listing all .db files"
echo "=============================="
ls *.db

echo ""
echo "=============================="
echo "🧑‍💻 Querying Users Database"
echo "=============================="
sqlite3 user.db "SELECT * FROM users;"

echo ""
echo "=============================="
echo "🛒 Querying Products Database"
echo "=============================="
sqlite3 product.db "SELECT * FROM products;"

echo ""
echo "=============================="
echo "🎫 Querying Tickets Database"
echo "=============================="
sqlite3 ticket.db "SELECT * FROM tickets;"

echo ""
echo "✅ App Support Check Completed!"

