if [ "$1" = "stock_analysis" ]; then
    docker compose run --rm stock_analysis
elif [ "$1" = "trip_planner" ]; then
    docker compose run --rm trip_planner
else
    echo "Please specify a service: stock_analysis or trip_planner"
fi
