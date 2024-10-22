package com.example.tamagochi.repositories;

import com.example.tamagochi.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<Image, Long> {
}