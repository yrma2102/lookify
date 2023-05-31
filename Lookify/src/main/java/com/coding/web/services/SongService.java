package com.coding.web.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.coding.web.moldes.Song;
import com.coding.web.repositories.ISongRepository;

@Service
public class SongService {
	private final ISongRepository songRepository;
	public SongService(ISongRepository songRepository) {
		this.songRepository = songRepository;
	}
	
	public List<Song> findAll() {
		return songRepository.findAll();
	}
	
	public void create(Song song){
		songRepository.save(song);
	}
	
	public List<Song> topTen(){
		return songRepository.findTop10ByOrderByRatingDesc();
	}
	
	public void deleteSong(Long id) {
		songRepository.deleteById(id);
	}
	
	public Song findById(Long id) {
		Optional<Song> optionalSong = songRepository.findById(id);
		if (optionalSong.isPresent()) {
			return optionalSong.get();
		} else {
			return null;
		}
	}
	
	public List<Song> findAllByArtist(String artist) {
		List<Song> songs = songRepository.findAllByArtist(artist);
		if (songs.isEmpty()) {
			return null;
		} else {
			return songs;
		}
	}
}
