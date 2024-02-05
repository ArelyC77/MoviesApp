//
//  Track.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/2/22.
//
import Nuke
import Foundation

// TODO: Pt 1 - Create a Track model struct
struct Track{
    let trackName: String /*movie title*/
    let artistName: String
    let artworkUrl100: URL
    let collectionName: String /*vote average*/
    let primaryGenreName: String /*vote count*/
    let releaseDate: String
    //let trackTimeMillis: String /*popularity*/
}

// TODO: Pt 1 - Create an extension with a mock tracks static var
extension Track{
    static var mockTracks: [Track] = [
        
        Track(trackName: "Wonka", /*movie title*/
              artistName: "Willy Wonka – chock-full of ideas and determined to change the world one delectable bite at a time – is proof that the best things in life begin with a dream, and if you’re lucky enough to meet Willy Wonka, anything is possible.",/* partial description*/
              //POSTER URL
              artworkUrl100: URL(string:  "https://resizing.flixster.com/i7Txn-rTWv7B8aB5AYbe2IuLU6s=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzE0N2E1MDljLTNlZDEtNDIyMS1iZjgzLTJkMjU1NjRjNzEwMy5qcGc=")!,
              collectionName: "7.239",
              primaryGenreName: "1785",
              releaseDate: "2244.452"), /*popularity*/
              //trackTimeMillis: "2244.452"),
            
        Track(trackName: "Migration",
              artistName: "After a migrating duck family alights on their pond with thrilling tales of far-flung places, the Mallard family embarks on a family road trip, from New England, to New York City, to tropical Jamaica.",
              artworkUrl100: URL(string: "https://resizing.flixster.com/4zVIr5NBi4eFPiXCc-fh1vi6tcM=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzL2EwN2M1YTY2LTRhYTMtNGMwYS1hODZmLTdlZjY2ZDkxMjczYS5qcGc=")!,
              collectionName: "7.743",
              primaryGenreName: "472",
              releaseDate: "1736.027"),
              //trackTimeMillis: "2244.452"),
        
        Track(trackName: "Anyone But You",
              artistName: "Bea and Ben look like the perfect couple, but after an amazing first date something happens that turns their fiery hot attraction ice cold - until they find themselves unexpectedly thrust together at a destination wedding in Australia. So they do what any two mature adults would do: pretend to be a couple.",
              artworkUrl100: URL(string: "https://resizing.flixster.com/JdMayYRDBiWLQAcfMSIhgpddN20=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzNkNTI4ODdiLTAyYTQtNGMxYS1hNGEwLTYzNDMwM2JjZDIwYi5qcGc=")!,
              collectionName: "7.388",
              primaryGenreName: "206",
              releaseDate: "494.276"),
              //trackTimeMillis: "2244.452"),
        
        Track(trackName: "Poor Things",
              artistName: "Brought back to life by an unorthodox scientist, a young woman runs off with a debauched lawyer on a whirlwind adventure across the continents. Free from the prejudices of her times, she grows steadfast in her purpose to stand for equality and liberation.",
              artworkUrl100: URL(string: "https://resizing.flixster.com/U_RT77J5o2EfMC-DdAc7Dm8CkKY=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzNmM2FiYmJhLTFjYTgtNDljOC04MjQ4LTU1Yjg0M2NkNTdmZC5qcGc=")!,
              collectionName: "8.17",
              primaryGenreName: "831",
              releaseDate: "484.383"),
              //trackTimeMillis: "2244.452"),
        
        Track(trackName: "Oppenheimer",
              artistName: "The story of J. Robert Oppenheimer's role in the development of the atomic bomb during World War II.",
              artworkUrl100: URL(string: "https://resizing.flixster.com/5bbfOrn5Stku1HxlkK4ISYi2uQk=/206x305/v2/https://resizing.flixster.com/dV1vfa4w_dB4wzk7A_VzThWUWw8=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzEyZDMyYjZmLThmNzAtNDliNC1hMjFmLTA2ZWY4M2UyMjJhMi5qcGc=")!,
              collectionName: "8.117",
              primaryGenreName: "6535",
              releaseDate: "467.049")
              //trackTimeMillis: "2244.452"),
        
    ]
}

// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}
