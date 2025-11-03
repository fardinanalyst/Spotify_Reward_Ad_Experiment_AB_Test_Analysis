select * from spotify_ads_served;
select * from spotify_conversions;
select * from spotify_sessions;
select * from spotify_tracks_played;
select * from spotify_users;


-- select *
-- from spotify_users as su
-- left join spotify_tracks_played as stp
-- on su.user_id = stp.user_id
-- left join spotify_sessions as ss
-- on stp.session_id = ss.session_id
-- left join spotify_ads_served as ads
-- on 


SELECT
    -- From spotify_users
    su.user_id,
    su.signup_date,
    su.country,
    su.age,
    su.device_type,
    su.gender,
    su.is_premium,

    -- From spotify_sessions
    ss.session_id,
    ss.session_start,
    ss.session_end,
    ss.num_tracks_played,
    ss.total_listen_time,
    ss.num_ads,
    ss.experiment_group,

    -- From spotify_tracks_played
    stp.play_id,
    stp.track_id,
    stp.track_genre,
    stp.listen_duration,
    stp.skipped,

    -- From spotify_ads_served
    ads.ad_id,
    ads.ad_type,
    ads.ad_duration,
    ads.ad_skipped,
    ads.ad_click,
    ads.ad_timestamp,

    -- From spotify_conversions
    conv.conversion_id,
    conv.conversion_date,
    conv.conversion_channel,
    conv.previous_experiment_group,
    conv.trial_started

FROM spotify_users AS su
LEFT JOIN spotify_tracks_played AS stp
    ON su.user_id = stp.user_id
LEFT JOIN spotify_sessions AS ss
    ON stp.session_id = ss.session_id
LEFT JOIN spotify_ads_served AS ads
    ON ss.session_id = ads.session_id
LEFT JOIN spotify_conversions AS conv
    ON su.user_id = conv.user_id;


-- BASELINE DATASET
SELECT
    su.user_id,
    su.country,
    su.device_type,
    su.age,
    ss.session_id,
    ss.session_start,
    ss.session_end,
    ss.num_tracks_played,
    ss.total_listen_time,
    ss.num_ads,
    stp.track_id,
    stp.track_genre,
    stp.listen_duration,
    stp.skipped,
    ads.ad_id,
    ads.ad_type,
    ads.ad_skipped,
    ads.ad_click
FROM spotify_users AS su
LEFT JOIN spotify_sessions AS ss
    ON su.user_id = ss.user_id
LEFT JOIN spotify_tracks_played AS stp
    ON ss.session_id = stp.session_id
LEFT JOIN spotify_ads_served AS ads
    ON ss.session_id = ads.session_id
WHERE ss.experiment_group IS NULL
  AND ss.session_start BETWEEN '2025-06-01 00:16:45' AND '2025-07-15 23:59:59';
  
  select * from spotify_sessions_ab;
  select * from spotify_ads_served_ab;
  select * from spotify_conversions_ab;
  select * from  spotify_users_ab;
  
  
  drop table spotify_ads_served_ab;
  
