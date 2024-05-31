FROM docker.io/osrf/ros:humble-desktop-full AS ros_build

WORKDIR /ws

COPY . .

RUN colcon build

FROM ros:humble-ros-base

WORKDIR /node

# TODO: Agregar compilado del paquete
