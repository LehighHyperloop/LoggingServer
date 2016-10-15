CREATE DATABASE logs;

\c logs;

CREATE TABLE log_basic (
  time timestamp,
  tag  text,
  data text
);
