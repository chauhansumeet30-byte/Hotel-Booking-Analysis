import pandas as pd

df = pd.read_csv("hotel_cleaned.csv")
df.columns=df.columns.str.strip().str.lower()

 1 - Total Bookings by Hotel

print(df["hotel"].value_counts())


 2 - Overall Cancellation Rate

cancellation_rate = (df["is_canceled"].sum() / len(df)) * 100
print(cancellation_rate)


 3 - Bookings by Month

print(df["arrival_date_month"].value_counts())


 4 - Bookings by Country

print(df["country"].value_counts())


 5 - Average Daily Rate by Hotel

print(df.groupby("hotel")["adr"].mean().sort_values(ascending=False))


 6 - Cancellation Rate by Hotel

print(
    (
        df.groupby("hotel")["is_canceled"].sum()
        / df.groupby("hotel")["is_canceled"].count()
    ) * 100
)


 7 - Bookings by Market Segment

print(df["market_segment"].value_counts())


 8 - Cancellation Rate by Market Segment

print(
    (
        df.groupby("market_segment")["is_canceled"].sum()
        / df.groupby("market_segment")["is_canceled"].count()
    ) * 100
)


 9 - Bookings by Customer Type

print(df["customer_type"].value_counts())


 10 - Average ADR by Assigned Room Type

print(
    df.groupby("assigned_room_type")["adr"]
    .mean()
    .sort_values(ascending=False)
)


11 - Bookings by Distribution Channel

print(df["distribution_channel"].value_counts())


 12 - Cancellation Rate by Distribution Channel

print(
    (
        df.groupby("distribution_channel")["is_canceled"].sum()
        / df.groupby("distribution_channel")["is_canceled"].count()
    ) * 100
)


 13 - Most Preferred Meal

print(df["meal"].value_counts())


 14 - Cancellation Rate by Meal

print(
    (
        df.groupby("meal")["is_canceled"].sum()
        / df.groupby("meal")["is_canceled"].count()
    ) * 100
)


 15 - Average Lead Time by Hotel

print(
    df.groupby("hotel")["lead_time"]
    .mean()
    .sort_values(ascending=False)
)