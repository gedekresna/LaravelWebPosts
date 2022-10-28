<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Post;
use App\Models\Category;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::factory(5)->create();

        Post::factory(5)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        // User::create([
        //     'name' => 'I Gede Kresna',
        //     'email' => 'gedekresnap@gmail.com',
        //     'password' => bcrypt('aryawan1')
        // ]);

        // User::create([
        //     'name' => 'Mario Bross',
        //     'email' => 'mario@gmail.com',
        //     'password' => bcrypt('marioo')
        // ]);


        Category::create([
            'name' => 'programmming',
            'slug' => 'programming'
        ]);

        Category::create([
            'name' => 'web design',
            'slug' => 'web-design'
        ]);

        Category::create([
            'name' => 'personal',
            'slug' => 'personal'
        ]);

        // Post::create([
        //     'title' => 'judul pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'lorem ipmsun.....',
        //     'body' => 'lorenmrakrnajebnfaiefndaifnaifnanfanf',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'judul kedua',
        //     'slug' => 'judul-kedua',
        //     'excerpt' => 'lorem ipmsun.....',
        //     'body' => 'lorenmrakrnajebnfaiefndaifnaifnanfanf',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'judul ketiga',
        //     'slug' => 'judul-ketiga',
        //     'excerpt' => 'lorem ipmsun.....',
        //     'body' => 'lorenmrakrnajebnfaiefndaifnaifnanfanf',
        //     'category_id' => 1,
        //     'user_id' => 2
        // ]);
    }
}
