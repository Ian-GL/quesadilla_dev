defmodule BooksLists.Year2022 do
  alias QuesadillaDev.Schemas.Reading

  def list, do:
    [
      %Reading{
        title: "Metafísica de los tubos",
        author: "Amélie Nothomb",
        author_gender: :female,
        reading_date: ~D[2022-01-08],
        genre: :novel,
        nationality: "BE",
        publishing_year: 2000,
        original_language: "French",
        read_language: "Spanish",
        first_time: true
      },
      %Reading{
        title: "Los desposeídos",
        author: "Ursula K. Le Guin",
        author_gender: :female,
        reading_date: ~D[2022-01-29],
        genre: :novel,
        nationality: "US",
        publishing_year: 1974,
        original_language: "English",
        read_language: "Spanish",
        first_time: true
      },
      %Reading{
        title: "Weapons of Math Destruction: How Big Data Increases Inequality and Threatens Democracy",
        author: "Cathy O'Neil",
        author_gender: :female,
        reading_date: ~D[2022-02-08],
        genre: :essay,
        nationality: "US",
        publishing_year: 2016,
        original_language: "English",
        read_language: "English",
        first_time: true
      },
      %Reading{
        title: "La hora de la estrella",
        author: "Clarice Lispector",
        author_gender: :female,
        reading_date: ~D[2022-02-14],
        genre: :novel,
        nationality: "BR",
        nationality_2: "UA",
        publishing_year: 1977,
        original_language: "Portuguese",
        read_language: "Spanish",
        first_time: true
      },
      %Reading{
        title: "Cuentos completos",
        author: "Leonora Carrington",
        author_gender: :female,
        reading_date: ~D[2022-02-27],
        genre: :short_stories,
        nationality: "MX",
        nationality_2: "UK",
        publishing_year: 2017,
        original_language: "Portuguese",
        read_language: "Spanish",
        first_time: true
      },
      %Reading{
        title: "Piranesi",
        author: "Susanna Clarke",
        author_gender: :female,
        reading_date: ~D[2022-03-31],
        genre: :novel,
        nationality: "UK",
        publishing_year: 2020,
        original_language: "English",
        read_language: "English",
        first_time: true
      },
      %Reading{
        title: "The Ancient Magus' Bride, Vol. 1",
        author: "Kore Yamazaki",
        author_gender: :female,
        reading_date: ~D[2022-04-01],
        genre: :graphic_novel,
        nationality: "JP",
        publishing_year: 2013,
        original_language: "Japanese",
        read_language: "Spanish",
        first_time: true
      },
      %Reading{
        title: "Breve crónica de una paulatina desaparición",
        author: "Juliana Kálnay",
        author_gender: :female,
        reading_date: ~D[2022-04-13],
        genre: :novel,
        nationality: "DE",
        publishing_year: 2017,
        original_language: "German",
        read_language: "Spanish",
        first_time: true
      },
      %Reading{
        title: "Anubis",
        author: "Joanna Karpowicz",
        author_gender: :female,
        reading_date: ~D[2022-04-15],
        genre: :art,
        nationality: "PL",
        publishing_year: 2017,
        original_language: "English",
        read_language: "English",
        first_time: true
      },
      %Reading{
        title: "Sagitario",
        author: "Natalia Ginzburg",
        author_gender: :female,
        reading_date: ~D[2022-05-29],
        genre: :novel,
        nationality: "IT",
        publishing_year: 1957,
        original_language: "Italian",
        read_language: "Spanish",
        first_time: true
      },
      %Reading{
        title: "Ää: manifiestos sobre la diversidad lingüística",
        author: "Yásnaya Elena A. Gil",
        author_gender: :female,
        reading_date: ~D[2022-06-05],
        genre: :essay,
        nationality: "MX",
        publishing_year: 2020,
        original_language: "Spanish",
        read_language: "Spanish",
        first_time: true
      },
      %Reading{
        title: "The Divine Invasion",
        author: "Philip K. Dick",
        author_gender: :male,
        reading_date: ~D[2022-08-31],
        genre: :novel,
        nationality: "US",
        publishing_year: 1981,
        original_language: "English",
        read_language: "English",
        first_time: true
      },
      %Reading{
        title: "El nervio óptico",
        author: "María Gainza",
        author_gender: :female,
        reading_date: ~D[2022-09-10],
        genre: :novel,
        nationality: "AR",
        publishing_year: 2014,
        original_language: "Spanish",
        read_language: "Spanish",
        first_time: true
      },
      # %Reading{
      #   title: "Pomelo",
      #   author: "Yoko Ono",
      #   author_gender: :female,
      #   reading_date: ~D[2022-09-10],
      #   genre: :novel,
      #   nationality: "AR",
      #   publishing_year: 2014,
      #   original_language: "Spanish",
      #   read_language: "Spanish",
      #   first_time: true
      # },
    ]
end
