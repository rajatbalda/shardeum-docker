#!/usr/bin/env bash

{
  rm -rf ./data
} || {
  sudo rm -rf ./data
}
