package com.coding.web.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.coding.web.moldes.Song;

@Repository
public interface ISongRepository extends CrudRepository<Song, Long> {
	List<Song> findAll();
	List<Song> findTop10ByOrderByRatingDesc();
	List<Song> findAllByArtist(String artist);

}
