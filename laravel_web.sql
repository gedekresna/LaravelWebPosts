-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Okt 2022 pada 05.31
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_web`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'programming', 'programming', '2022-10-27 22:14:43', '2022-10-27 22:14:43'),
(2, 'web design', 'web-design', '2022-10-27 22:14:43', '2022-10-27 22:14:43'),
(3, 'personal', 'personal', '2022-10-27 22:14:43', '2022-10-27 22:14:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_27_022911_create_posts_table', 1),
(6, '2022_10_27_030945_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publiseh_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `excerpt`, `body`, `publiseh_at`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'Quia assumenda ipsum sit autem ut nam facilis.', 'iure-laudantium-iusto-sit-ut', 'Pariatur ducimus incidunt commodi. Consequatur et et quibusdam ex distinctio quis ea. Voluptatem voluptas ut inventore. Omnis neque ad quibusdam in perspiciatis vel maiores suscipit. Placeat quia ea nemo dolore nulla qui et.', '<p>Excepturi dolorem soluta et eveniet. Est eligendi alias pariatur et maxime est eos.<p></p>Consequatur blanditiis nemo et mollitia. Ad est eaque omnis rerum nihil et recusandae. Alias accusantium aut accusamus qui et id ipsam. Beatae nisi recusandae sequi reprehenderit amet dolorem aliquid.<p></p>Possimus quibusdam deleniti consequatur odio molestiae reiciendis. Ipsa et ut asperiores. Suscipit aperiam impedit aut enim tempora dolor.<p></p>Sapiente veniam facere non nemo dolorem porro voluptatem. Eveniet dolor nobis quas enim perferendis. Enim quia voluptatum ipsa cum nihil quo.<p></p>Soluta accusantium non aut excepturi ex eos modi. Accusamus voluptas aut rerum amet est natus sint aut. Rem nobis corrupti quia molestias. Eaque sint pariatur dignissimos asperiores nihil.<p></p>Quo aut nemo eum molestias quam ut voluptas. Sed aliquid culpa id facere. Repudiandae pariatur reprehenderit rerum nihil suscipit. Commodi explicabo maiores ratione unde laborum blanditiis culpa.<p></p>Sit nemo quis soluta cumque non perspiciatis accusantium. Nobis illo in laudantium aliquid natus repellendus. Rerum fugit itaque aut eos incidunt. Et unde ut esse doloremque consequuntur.<p></p>Debitis nobis quam fugiat sed. Odio maiores maxime cumque pariatur ut reiciendis et eius. Quam consequatur et odio.</p>', NULL, '2022-10-27 22:14:43', '2022-10-27 22:14:43'),
(2, 2, 3, 'Alias magnam dicta.', 'fugit-animi-vitae-nulla-debitis-laudantium', 'Recusandae autem quod et impedit. Error facilis et nulla et sapiente. Minus inventore qui aut quaerat.', '<p>Dignissimos asperiores ut perspiciatis modi repudiandae et iste. Expedita aliquid dolorem fuga ratione. Perferendis natus veniam facilis aut. Omnis sint magni accusantium eligendi quibusdam dicta nam. Officia qui vero molestiae occaecati.<p></p>Placeat maxime quas accusantium aut ad. Sequi suscipit possimus inventore nemo. Et quia enim similique quae quas soluta. Non nesciunt ad velit ad soluta.<p></p>Enim quam recusandae quibusdam alias. Assumenda sunt voluptatem ipsum perspiciatis voluptatibus. Earum dolorum perferendis eveniet consequuntur ut doloremque. Ipsam sequi consequatur illum dolor et nam.<p></p>Explicabo excepturi quas atque aut quaerat dolores. Doloribus beatae at est a. Laborum harum exercitationem pariatur placeat veniam illo molestiae.<p></p>Eligendi cupiditate vel excepturi aliquid dolores sequi amet. Iusto qui est et dolorem. Voluptatibus quis sed quasi qui a et. Dicta quaerat rem quia provident occaecati nihil. Alias possimus odit expedita voluptatum non et.<p></p>Voluptatibus quis delectus iusto vel nobis. Aut expedita fugiat ipsam. Rerum quo explicabo blanditiis molestiae.<p></p>Aut aliquid inventore sed labore ipsa voluptatem consectetur. Aut dignissimos voluptatum voluptatem et asperiores hic. Sit fugit laudantium facere nulla omnis iure. Aut repellendus quidem ut ullam reiciendis at pariatur error.<p></p>Ipsum eum sint tempore ratione cupiditate suscipit. Accusamus delectus et expedita. Ut suscipit optio temporibus qui nobis deserunt. Necessitatibus omnis tempore totam sint et.<p></p>Autem molestiae a aspernatur eos qui. Suscipit eos perspiciatis eius consequatur. Eligendi deleniti cum ab architecto ut.<p></p>Illum hic illo et consectetur sed qui nisi quae. Et illum commodi eaque. Qui dignissimos ducimus vel omnis magnam dolores non. Est nam et ab debitis.</p>', NULL, '2022-10-27 22:14:43', '2022-10-27 22:14:43'),
(3, 2, 5, 'Iste ex.', 'atque-ipsa-vel-molestias-aut', 'Facilis saepe aliquam sed amet doloremque similique. In ipsa qui reiciendis est qui optio repellat eaque. Ea enim voluptas velit possimus pariatur assumenda voluptatem.', '<p>Eum inventore ut autem debitis id minus assumenda. Est eligendi est ut at ea. In ut et vel est.<p></p>Corporis dolorum quod optio repudiandae veritatis. Ad corporis nostrum modi repellat odio eaque voluptate.<p></p>Praesentium voluptatem tempora sed assumenda doloribus. Dolor nobis at veniam enim repudiandae exercitationem. Fugiat voluptatem qui tempore et vitae ipsum eius.<p></p>Nihil voluptatem temporibus consequatur dolor illum officiis et rem. Suscipit animi occaecati facere odio maxime nihil quae. Ut quia unde omnis alias vero dolor beatae. Mollitia alias autem optio illo et laboriosam soluta.<p></p>Officia et debitis iusto atque. Perspiciatis nulla et dolor laboriosam reprehenderit rerum. Quis qui est rerum doloribus. Maxime repellat nulla qui mollitia corrupti in rem similique. Corrupti minima accusantium ut iusto aut.<p></p>Illum sequi ea expedita placeat et corporis delectus. In labore quam sed reprehenderit culpa laudantium. Repudiandae exercitationem sit reprehenderit accusamus. Dolorem minus veniam rerum reprehenderit.<p></p>Quas rerum omnis recusandae sequi. Omnis deleniti suscipit alias reiciendis consequatur nostrum ipsa facilis. Amet magnam voluptas consequatur impedit voluptatem molestiae. Perspiciatis quibusdam esse libero voluptas. Dolorum est consequuntur aut id nihil.<p></p>Est doloribus veniam asperiores cupiditate eveniet beatae autem. Nesciunt eius iste qui autem vel ut nesciunt. Cum molestiae qui nihil consequatur doloribus animi ipsam. Reiciendis soluta possimus quia distinctio inventore eos qui.<p></p>Et recusandae provident porro architecto quae. Recusandae ratione atque unde. Et voluptas temporibus voluptas nihil ratione. Non ratione ipsam fugiat dicta quibusdam explicabo earum.<p></p>Voluptatem ex quod eius corrupti quibusdam fugiat ut. Cumque error autem cumque dicta. Aut aperiam voluptate quis et qui eum. Ut pariatur occaecati dolorum aut laborum quibusdam dolorem. Architecto omnis et alias doloremque et quidem dicta earum.</p>', NULL, '2022-10-27 22:14:43', '2022-10-27 22:14:43'),
(4, 1, 5, 'Excepturi esse perferendis harum magni exercitationem voluptatem.', 'suscipit-omnis-qui-repudiandae-rerum', 'Culpa et voluptatum natus quas. Qui omnis omnis enim sapiente aspernatur. Esse consequuntur vero quae quidem vitae. Sed error provident molestiae odio eveniet omnis.', '<p>Quibusdam nobis aliquid ad facilis. Vero omnis odio labore laudantium. Iure ea ea dolores aut quia hic. Et est sit sed asperiores fugit non.<p></p>Aut suscipit aperiam et ea voluptas fuga minima. Culpa unde saepe repellendus officiis nostrum maiores. Molestiae exercitationem qui inventore blanditiis et atque ipsum quae.<p></p>Quia et sed sed ea est corporis ut. Culpa rem porro ratione sed. Commodi reiciendis maiores ut quis et dolor. Aperiam vel assumenda magnam et.<p></p>At quis laboriosam quod quas et aut. Sit recusandae accusantium vel omnis molestiae alias. Odit aut autem similique.<p></p>Saepe expedita maiores commodi tempore temporibus molestiae. Sint necessitatibus id eum quae dignissimos. Repellendus aut exercitationem qui qui rerum.</p>', NULL, '2022-10-27 22:14:43', '2022-10-27 22:14:43'),
(5, 3, 5, 'Sit eius quidem aut ut eum.', 'voluptas-illum-nobis-dicta-nostrum-deserunt-impedit', 'Quae nihil qui ut quisquam deserunt recusandae quis impedit. Aperiam consequatur est nulla sed ea ipsam. Itaque nihil inventore nam ut id ad. Placeat distinctio atque deleniti sit et.', '<p>Excepturi dolores delectus reprehenderit vero. Ut ea provident molestiae et. Eum est eum perspiciatis. Quis iste et eum reiciendis a iure porro doloribus.<p></p>Sit pariatur aut eligendi enim ut. Itaque qui molestias dolore recusandae et exercitationem qui cumque. Numquam expedita quidem voluptatibus labore.<p></p>Labore ut dolor nihil minus dolorum temporibus doloremque. At recusandae eligendi mollitia ex id. Eum alias nisi vitae dolor sunt.<p></p>Et sed perspiciatis iusto necessitatibus. Consequuntur dolor blanditiis voluptatem facilis sed maxime. Praesentium nihil impedit ut quisquam consequatur dolore ex dolorem. Magni ut nam eos cupiditate odit.<p></p>Vero unde et aliquid in quas pariatur consequatur. Dolores repudiandae enim natus placeat dignissimos voluptatem fuga sit. Sint temporibus hic omnis ducimus et quas. Odit aliquam sunt et unde.<p></p>Sed ut hic in quod. Et aut dicta rerum et numquam sint rem. Ut qui iure sit eaque. Sed maiores sit eos.<p></p>Praesentium consequatur ipsam iure asperiores esse. Corrupti doloribus nesciunt mollitia at velit sint eos.</p>', NULL, '2022-10-27 22:14:43', '2022-10-27 22:14:43'),
(6, 2, 5, 'Tenetur et amet nostrum.', 'dolor-recusandae-amet-officia-atque-laborum-perspiciatis-maiores', 'Nulla similique et vitae amet illo velit. Quo perferendis accusantium eum tempore est minus debitis. Et fuga quaerat voluptatem doloremque voluptas deserunt.', '<p>Minima eligendi sequi dolorem harum. Enim reprehenderit ut et. Aut assumenda voluptatibus ipsam natus at amet sint.<p></p>Aut neque consequatur vel libero quam eos aspernatur. Rerum eius est sequi facilis quis eum. Voluptatibus corrupti officia sit. Eos nihil dicta sunt quo quo qui eaque laboriosam.<p></p>Est fugit porro illum quia provident. Molestiae itaque exercitationem suscipit consequuntur sed distinctio voluptate. Sed veritatis nesciunt quod sint et similique.<p></p>Quod culpa aut deserunt praesentium nihil necessitatibus. Accusantium sequi necessitatibus pariatur rerum voluptatem. Laboriosam sed ipsa ut dicta iusto.<p></p>Blanditiis quia voluptas consequatur illum. Et architecto ut minima vero. Porro accusantium minus expedita assumenda incidunt voluptas doloremque.<p></p>Occaecati optio non eum possimus consequatur est. Consequatur dolorum quis distinctio in fugiat. Et nesciunt sed ad non natus libero minus. Hic voluptatem neque est quia pariatur eaque.<p></p>Veniam sequi et aut nam perspiciatis aperiam consequatur. Repellat nulla quidem expedita atque. Qui eos eius sit debitis. Et error dolor ex sit sed sint debitis. Est est doloremque ut quisquam eum.<p></p>Voluptatem laudantium officia sint cum ut. Debitis maxime repudiandae quidem excepturi temporibus a molestiae. Sit modi nihil magni sit dicta dolores.</p>', NULL, '2022-10-27 22:14:43', '2022-10-27 22:14:43'),
(7, 3, 5, 'Eveniet voluptates sed optio excepturi voluptate eligendi reprehenderit iure animi.', 'aut-tenetur-provident-perferendis-inventore', 'Quasi quaerat velit officia ut deserunt et in. Exercitationem et voluptatem ducimus fuga. Sed esse perferendis quas fugit.', '<p>Impedit eligendi tenetur animi ad qui laborum. Est minima laudantium pariatur quia expedita rerum.<p></p>Tempora doloremque eveniet facere hic doloribus qui aliquid. Maiores qui odit amet cupiditate. Vel excepturi laudantium accusamus necessitatibus nihil error. Quidem deserunt dolor suscipit aut sapiente sunt veritatis.<p></p>Quia sit dolor ducimus aliquid architecto necessitatibus enim. Quo sunt natus omnis minus ipsum aut quidem. Consequatur recusandae ullam labore vel ipsum sed consequatur. Quo maiores placeat ducimus veniam harum blanditiis id modi.<p></p>Minus natus nesciunt aut qui a et. Eos et dolor voluptatum aspernatur dolorum dolor quo quis.<p></p>Optio et ipsum reiciendis eum expedita impedit. Numquam qui aliquid optio atque iure molestiae delectus est. Aliquam rem minus a modi rerum et. Facilis laborum asperiores error doloribus sapiente.<p></p>Et quidem quis aliquam nobis. Et numquam perspiciatis inventore laboriosam quo. Quae magni labore quae laudantium qui est iusto aut. Unde et et quo mollitia sed voluptas vero.<p></p>Numquam velit sapiente voluptas vel exercitationem ut. Voluptas atque iste quam sapiente ab error tempora.<p></p>Non ut perferendis ut et impedit illum. Qui recusandae ipsum perspiciatis quas quis quos. In quo voluptas quasi et.<p></p>Minima rem animi impedit quas mollitia. At at cum quis. Ea blanditiis laborum veniam.<p></p>Velit ut occaecati commodi sint perferendis aut molestiae. Sequi magni vitae aliquam velit natus quia. Et ratione aut et mollitia ipsum delectus quam.</p>', NULL, '2022-10-27 22:14:43', '2022-10-27 22:14:43'),
(8, 2, 1, 'Consequuntur sapiente quo et fugiat.', 'quam-asperiores-aut-est-aut-inventore-exercitationem-unde-repudiandae', 'Neque nostrum molestias hic sit nobis error. Quas explicabo quaerat ea officia ab.', '<p>Earum at id perspiciatis temporibus. Neque dignissimos minima excepturi id. Ex voluptatum assumenda sed adipisci nisi. Ut provident dolores est molestiae quis velit.<p></p>Qui harum voluptates repellendus vero consequatur. Amet aut possimus reiciendis distinctio nihil et sunt. Eum eius culpa porro ducimus rem.<p></p>Perferendis non maxime sit qui qui sit. Molestias et et incidunt voluptates consequatur molestiae. Provident quia nemo cupiditate et eius. Aliquam molestiae exercitationem dolore non quasi. Et ut harum esse deleniti.<p></p>Quo vitae aperiam aut dicta nam vel fugit mollitia. Soluta magni et quo dolore expedita. Quo sint nesciunt iure exercitationem reiciendis ipsam. Voluptatum itaque rerum aperiam consequatur qui fugiat a. Necessitatibus ut quia sunt maxime aut magni sed saepe.<p></p>Dolores minima nostrum quo provident. Praesentium voluptatem in molestiae. Cum sed earum tempora beatae delectus. Repellendus occaecati et hic. Ab excepturi facere et est.</p>', NULL, '2022-10-27 22:14:43', '2022-10-27 22:14:43'),
(9, 2, 3, 'Distinctio et omnis.', 'voluptates-est-quo-nesciunt-expedita-accusantium-ea-illo', 'Corrupti optio nemo aut sapiente esse officia rerum. Aut nobis doloribus alias nostrum cumque. Sequi aspernatur vel vel. Nemo eos et in vel tempore vel dolores.', '<p>Est libero dolorum numquam tempore et accusantium. Eligendi porro enim beatae rerum quia. Deleniti pariatur expedita maxime ut quod quis eos.<p></p>Nam quia occaecati architecto quis vitae mollitia iste. Ut mollitia esse quo facere dolorem sint. Enim repellat quia atque porro natus.<p></p>Nihil voluptatem eveniet eaque. Minus quisquam quaerat aut commodi ut.<p></p>Sed debitis nisi aut tempora dolorem aut dignissimos vel. Iure voluptatibus quia aut voluptas architecto. Nesciunt natus laborum et quas aperiam molestias.<p></p>Reprehenderit laborum ullam veniam magnam enim. Facere quas odit ut accusamus. Sed similique qui repudiandae earum dolores.<p></p>Voluptates similique enim labore velit officia saepe saepe. Et mollitia ea nam sint ipsam tempora ipsa. Adipisci ut nulla ut laboriosam numquam sit.<p></p>Dolore aut dolores reprehenderit qui perspiciatis nostrum quaerat. Deserunt laboriosam aliquid veniam mollitia. Distinctio accusamus ab voluptas non.<p></p>Iusto distinctio quaerat quia labore. Et et nostrum omnis pariatur cupiditate nobis. Sint dolorem odit odit porro dignissimos repellat ab. Illo nemo inventore quos autem. Nihil quas neque unde voluptatem animi culpa neque repudiandae.<p></p>Nobis consectetur error harum dolorem rerum. Quis id qui suscipit saepe ducimus ipsa nihil. Aliquid id tempore consequatur accusantium sit nobis. Recusandae qui praesentium voluptas esse.<p></p>Sapiente non adipisci minus et illum qui alias. Voluptas vitae magni quae aspernatur enim sapiente libero. Et quaerat amet sint.</p>', NULL, '2022-10-27 22:14:43', '2022-10-27 22:14:43'),
(10, 2, 3, 'At quo et ea minima.', 'inventore-et-quo-dolorem-et', 'Ex quia sit debitis qui est eligendi assumenda sit. Culpa eos eum voluptatem nobis est dolorem quibusdam neque. Ut vitae laboriosam sed veniam exercitationem quia.', '<p>Et deserunt blanditiis quo quibusdam sed iure. Sapiente non fuga aut voluptas. Aliquam dolorum autem asperiores neque doloribus inventore. Iste odit quas est est commodi.<p></p>Expedita dignissimos quia assumenda earum. Consequatur minus enim ullam repellendus. Iusto eos quasi pariatur praesentium consequatur aut eius. Occaecati dolores eius quia ex quo.<p></p>Dolorum inventore et est aut quam. Laboriosam quia suscipit tenetur et. Rem est voluptas facere expedita. Maiores dolorem sit minus rerum corrupti culpa rerum magni. Explicabo dolores illo quaerat vero iusto.<p></p>Sint eos sed molestias in cumque dolor autem. Ea deserunt consequatur laboriosam occaecati et. Itaque corporis quibusdam ullam consequatur accusamus veniam. Qui at aliquid aut illum voluptatibus voluptates ullam autem.<p></p>Beatae perferendis molestiae provident aperiam. Molestiae nulla provident ut ab magni quas. Quisquam alias recusandae iure ex voluptatem. Sapiente quisquam id culpa ut voluptas sunt et.</p>', NULL, '2022-10-27 22:14:43', '2022-10-27 22:14:43'),
(11, 2, 4, 'Molestiae id veniam voluptatem et est deserunt.', 'magnam-dolore-autem-hic-facere', 'Quis repudiandae maiores aliquid omnis iusto. Pariatur autem quam vero voluptas. Est ab dolorem et iusto dolorem.', '<p>Et nisi aut sed pariatur. Molestiae praesentium in error ea rem et. Saepe sunt error omnis voluptate molestias nihil exercitationem.<p></p>Qui velit saepe quod deleniti et. Quae et culpa laboriosam et. Eius nostrum et et asperiores nam id. Aliquid eius corporis neque occaecati non labore.<p></p>Dolore error nobis officia similique et. Adipisci fugit vel enim repudiandae dolores laboriosam. Id vel quam non corporis qui.<p></p>Reiciendis debitis laudantium natus ut iure expedita temporibus. Aspernatur consequatur ut quis harum neque. Fugiat recusandae suscipit numquam. Alias magnam sequi placeat similique molestias.<p></p>Aperiam eligendi aspernatur quia nihil quis reiciendis. Molestiae voluptatum iusto vel fugiat et. Error sequi et qui.<p></p>Ea nihil consequatur qui commodi. Nihil inventore eius autem sit culpa. Consequatur est corrupti eos cupiditate autem. Hic consequatur ea dolorem consectetur et similique.</p>', NULL, '2022-10-27 22:14:43', '2022-10-27 22:14:43'),
(12, 1, 1, 'Quisquam ut et quod voluptas doloremque placeat eos.', 'nisi-eius-ut-iure-enim-laborum', 'Ducimus optio iste deserunt at qui est voluptate. Voluptatem sequi sed consequatur et nulla eaque.', '<p>Beatae eum tempora ratione non facilis quae. Est et nam est voluptate deserunt et. Unde est quaerat laborum repellendus perferendis et. Voluptatum tempora quia quos velit cum rerum et.<p></p>Praesentium similique temporibus neque temporibus blanditiis mollitia. Eius tenetur sequi impedit assumenda ut et vitae. Perspiciatis iusto cupiditate qui. Temporibus ad placeat rerum cumque qui. Consectetur architecto eos ut velit perspiciatis sit libero ducimus.<p></p>Quos est eius iusto alias voluptas. Quisquam rem dolores animi ipsam fugit. Earum rerum sunt magnam blanditiis officia aut.<p></p>Quia a voluptates eos itaque voluptates repellendus. Est neque praesentium architecto nihil reiciendis non nihil aut. Sunt incidunt dolor sint et nisi esse consequatur. Saepe commodi ipsam quia blanditiis.<p></p>Officia ut consequatur dignissimos quis. Dolores voluptatum necessitatibus corrupti asperiores id illum expedita cum. Ex vel dignissimos autem qui qui aut.<p></p>Perferendis enim ratione voluptatem quas fuga dicta accusamus. At sint velit qui necessitatibus dignissimos accusantium. Nemo repellat fugit possimus minima eius omnis tempore.</p>', NULL, '2022-10-27 22:14:43', '2022-10-27 22:14:43'),
(13, 3, 4, 'Commodi officia.', 'laudantium-sunt-provident-ipsam-placeat-sed-rerum', 'Qui omnis est natus esse tempora. Ipsum tenetur consequatur blanditiis hic quia sit qui nulla. Id incidunt cumque earum id rem necessitatibus exercitationem. Harum est molestiae sit quidem.', '<p>Iste ducimus hic quia facilis. Hic aperiam repellendus omnis alias deleniti.<p></p>Sed debitis laudantium est perferendis quaerat deserunt. Qui dolorem nobis inventore. Ratione excepturi possimus voluptatum incidunt velit quis id.<p></p>Ut similique nihil voluptas laborum. Est ipsam a ea omnis odit sed. Incidunt enim eos delectus impedit perspiciatis.<p></p>In ea aspernatur nam repudiandae. Autem et iusto tenetur deserunt natus quo. Sint voluptatem ut beatae reprehenderit.<p></p>Omnis asperiores aut sunt ab tenetur. Dolores cumque ullam consequatur nihil quis quidem. Est odio maxime aut error nesciunt provident aperiam ut.<p></p>Illo debitis architecto recusandae iusto enim. Sequi optio necessitatibus sequi qui dolores eum minima. Iure laudantium omnis qui.<p></p>Rerum minus voluptatem maiores aut vero. Optio vero et aut sit ad. Ea in placeat perferendis iusto unde. Qui nobis laudantium recusandae sit.<p></p>Et sunt ab qui non aut eaque alias. Expedita repellendus in at quisquam provident. Modi consectetur perferendis eum illum non exercitationem laboriosam. Sunt a voluptatem optio omnis optio sed atque.<p></p>Est tenetur praesentium aperiam itaque. Quia nihil dolor quasi dolores ut. Aspernatur non odit ipsum qui. Tempora facere ut quisquam consequuntur velit sit.<p></p>Et molestias molestias cumque dolorem. Deleniti voluptate blanditiis assumenda porro aut exercitationem sapiente. Rerum voluptates temporibus ea rerum dolorem. Commodi ea sunt tempora qui facilis ipsam earum. Et iusto possimus qui cum provident vero autem temporibus.</p>', NULL, '2022-10-27 22:14:43', '2022-10-27 22:14:43'),
(14, 1, 2, 'Qui qui.', 'eos-laboriosam-sequi-enim-quod-explicabo-cum', 'Tempora ut ullam qui eaque in voluptatem molestias. Ut aut porro neque. Ex saepe assumenda ut vitae officia iure. Iste est omnis eos et tempore quae non repudiandae.', '<p>Iure facilis nostrum aut earum eos ut. Similique cum animi sed non quasi. Quae voluptates rerum eius fugiat. Tempora consequatur dolor accusamus est mollitia cupiditate.<p></p>Sint beatae nulla voluptas et aut voluptatibus. Incidunt harum facilis et non tempora reiciendis est dicta. Aliquam quidem ad velit pariatur iusto omnis. Ea voluptatibus hic quidem hic occaecati.<p></p>Rem libero totam nostrum. Velit impedit aut in temporibus voluptas consequatur laborum. Fuga facere excepturi deserunt sequi.<p></p>Voluptas sed nobis sint atque. Sint occaecati ratione vitae omnis aut iste. Expedita corporis et et consectetur. Deserunt consequuntur rem delectus quia consequuntur doloremque natus.<p></p>Tenetur cum qui enim quidem debitis vel. Incidunt magnam possimus consectetur cupiditate. Modi et magnam dolorem quo aut beatae. Assumenda repellat tenetur ratione cumque nulla ut.<p></p>Vitae doloremque aspernatur asperiores aut repellendus sit. Sint repudiandae ut sapiente aut quia sit. Cumque officia et aspernatur minus sapiente. Dolorem qui tempore labore sint reiciendis.<p></p>Architecto autem ipsa aut possimus dolorem. Dolor pariatur ut debitis perferendis. Rerum ipsam aut fuga labore et quidem. Repudiandae corrupti rerum impedit numquam reiciendis.<p></p>Eos aut repellendus dolores est quam adipisci recusandae dolore. Nihil fugit laudantium iusto totam autem dolores aut. Et esse qui tenetur laborum minus iure reprehenderit.<p></p>Magni sed quisquam veritatis voluptatem quasi ex dolorem. Repudiandae aspernatur tempore dolore. Amet quo suscipit tempora porro rerum. Veritatis adipisci voluptatibus nostrum tenetur ut nisi omnis.<p></p>Hic perspiciatis quae ullam voluptatem. Velit ea suscipit voluptas aut. Asperiores sunt sit doloremque impedit.</p>', NULL, '2022-10-27 22:14:43', '2022-10-27 22:14:43'),
(15, 2, 5, 'Ad at doloribus et explicabo voluptate eos nam illum.', 'ducimus-beatae-velit-non-aut', 'Dignissimos nulla explicabo voluptas quod. Impedit rerum ut odit magnam. Fugit enim tempora dolor deleniti.', '<p>Ad et natus quod sunt aut. Velit qui voluptatem adipisci. Dolores perspiciatis iure eveniet qui officia et. Quisquam assumenda vel libero et possimus.<p></p>Et voluptatibus id voluptatem dolores nisi consequatur ipsum. Excepturi tempora tempore ut labore ea quia dicta. Quasi beatae maxime quia necessitatibus.<p></p>Id cumque officia est necessitatibus blanditiis doloribus voluptates. Exercitationem officia vel provident porro eaque occaecati hic rerum. Et nihil dicta tempore. Aut facilis ducimus atque molestiae in. Dolorem fugiat dolorem sint at est.<p></p>Qui quia voluptatibus est ipsum quod accusamus. Magnam officiis minus laborum excepturi ut. Porro nostrum quos dolores id.<p></p>Nihil delectus sed quisquam ratione eos et expedita harum. Occaecati et illum incidunt.</p>', NULL, '2022-10-27 22:14:43', '2022-10-27 22:14:43'),
(16, 2, 1, 'Veniam a consectetur.', 'numquam-adipisci-ipsum-et-qui-porro-et-neque-in', 'Rem eius natus saepe est animi. Ea velit quas vitae.', '<p>Minus ut voluptas fuga ut odit voluptas. Accusantium qui et velit consequuntur velit quidem nisi. Minus error impedit nesciunt id officiis labore. Facere architecto nisi sit aut inventore et.<p></p>Atque minima maiores accusamus error perferendis est odit omnis. Enim est qui soluta temporibus. Eligendi maxime dignissimos explicabo sed illo sed voluptatem.<p></p>Et corrupti odit repellat suscipit. Veniam et fugiat et ipsa. Quos error vel sequi officia laborum.<p></p>Iusto fugiat voluptatum fugiat nihil possimus qui rerum. Et nulla velit omnis amet omnis aut numquam.<p></p>Expedita et sequi et sit sint deserunt. At aut aut vero velit. Aliquid eos vero ut non.<p></p>Est earum temporibus fuga maxime. Ea eligendi eos cum itaque sit. Soluta quis ducimus consequatur. Eos iusto magni nihil totam rerum illo.<p></p>Placeat nisi necessitatibus consequatur totam et quam tempore. Aut voluptas in soluta delectus. Quae molestias id itaque recusandae illo placeat. Debitis et commodi officia dicta.<p></p>At ullam accusamus at provident voluptatem. Eveniet omnis eveniet ad enim recusandae. Explicabo numquam quisquam asperiores et et distinctio consequuntur.<p></p>Et consequatur reprehenderit omnis similique reiciendis. Facilis qui quam nemo ut blanditiis sed excepturi quis. Eum sed laborum porro sed reiciendis iste. Numquam et quas distinctio nesciunt voluptate accusamus qui.</p>', NULL, '2022-10-27 22:14:43', '2022-10-27 22:14:43'),
(17, 2, 4, 'Commodi et blanditiis.', 'ad-incidunt-repudiandae-natus-omnis', 'Eaque quidem qui quam ex sequi alias. Nemo neque illum nisi nesciunt ut sit. Dignissimos ex impedit pariatur repudiandae dolore. Cupiditate excepturi odio et aspernatur recusandae velit.', '<p>Quo culpa molestias facilis modi hic harum. Animi sint quis at. Nihil sint inventore quia. Dolores nobis repudiandae pariatur.<p></p>Aspernatur totam facere possimus aut in ut. Ipsam est ad et ut. Voluptatem consequatur voluptatum ratione maxime aut voluptatem sed. Quibusdam iusto sunt voluptatem cupiditate quo.<p></p>Aperiam omnis consequatur dolorum eveniet nesciunt quo sunt molestiae. Quam non similique consequatur et excepturi atque. Architecto nihil voluptate vel aliquid officiis ipsum sunt ea.<p></p>Assumenda enim similique occaecati recusandae et cumque porro odit. Odio expedita vel vitae voluptatem est sapiente commodi dolor. Quam id quis corrupti omnis adipisci culpa.<p></p>Quibusdam ut excepturi vel eaque et distinctio voluptatem. Ipsum deserunt placeat nostrum quam. Eos aut quibusdam a recusandae quisquam ullam. Alias mollitia consequatur similique dolorem consequuntur magnam qui.<p></p>Ducimus ducimus iste voluptatem qui consequatur dolor. Ipsa animi omnis sed nihil eos. A velit inventore nemo ut doloremque vero et. Facere nostrum quae ducimus vel non.<p></p>Est cumque dolorem facere est aliquid et. Natus fugit veniam dolor eius tempora. Officiis voluptatem fugiat suscipit esse officia est eveniet sit. Neque tempore sapiente libero dolorum. Eius neque delectus et assumenda fugiat distinctio voluptatum.<p></p>Delectus id sed et voluptatem qui ipsum iure. Impedit aliquam ut quisquam debitis laboriosam pariatur quia. Sint eaque sequi corporis in aspernatur.</p>', NULL, '2022-10-27 22:14:43', '2022-10-27 22:14:43'),
(18, 1, 5, 'Animi ipsam expedita ut.', 'eum-impedit-iure-nostrum-sequi-est', 'Nobis voluptas dolor rerum recusandae distinctio provident optio. Rerum reiciendis molestiae quis dolores quas possimus laudantium. Necessitatibus non reprehenderit distinctio voluptatem non qui natus.', '<p>Id et porro illum est nemo aut laboriosam. Et excepturi alias qui delectus totam tenetur facilis ea. Et ut qui dolorem et sint. Aspernatur magnam est voluptatibus nemo corrupti. Dolor quibusdam et quo perspiciatis deserunt consequuntur ducimus.<p></p>Libero et nam aut eum dignissimos. Quia est nihil ut facilis qui aperiam et. Aliquam quia voluptas sapiente et laborum occaecati dolorem.<p></p>Sunt vero ut nostrum iusto. Neque et expedita nihil. Consequuntur facere sint laborum placeat quasi officiis. Rerum et velit ullam.<p></p>Tenetur reiciendis dolor consequuntur eos eos ut. Repellendus quos ipsum sunt molestias est deserunt soluta. Facilis veniam odit consectetur quaerat expedita odit.<p></p>Id laboriosam ipsam assumenda qui. Similique autem dolore tenetur hic quas ea. Laborum et sequi doloremque. Similique aut recusandae similique. Voluptate praesentium perferendis non sit excepturi.<p></p>Aut quia et quia veritatis accusantium sunt hic molestiae. Quisquam architecto aut distinctio molestiae officiis. Esse consequatur non illo aut est reiciendis. Quod voluptatem facilis molestiae officiis.<p></p>Commodi officiis et architecto necessitatibus ut est voluptatibus. Nulla officia id sapiente optio. Id sed quia non dolor maxime molestias itaque. Suscipit possimus et sit occaecati aut molestiae fugiat.<p></p>Aut ipsum quo rerum dolor rerum et fuga recusandae. Sunt sint vitae similique quia ut. Esse nisi quibusdam ut eos ut ut.</p>', NULL, '2022-10-27 22:14:43', '2022-10-27 22:14:43'),
(19, 3, 1, 'Illo aut sit beatae eveniet sunt.', 'voluptatem-aut-earum-assumenda-velit-et-error', 'Quidem voluptate laborum id officiis assumenda placeat. Amet est dolores quo natus. Odio in tempore commodi eligendi consectetur quo velit. Voluptas corporis sint iste error nesciunt veniam.', '<p>Et sequi explicabo ullam reprehenderit blanditiis sequi sint eveniet. Similique ut non laborum voluptatibus aliquid possimus. Omnis et et reprehenderit voluptatibus quasi. Asperiores velit iusto blanditiis minima. Libero ducimus et eaque adipisci dicta accusantium et accusamus.<p></p>Magnam sed corporis quaerat animi. Sapiente doloribus laudantium sint. Laborum odio rem odio aut itaque aut facilis. Sit est autem laudantium exercitationem alias recusandae.<p></p>Voluptatem sed fugit quis eum dignissimos autem aut. Occaecati tempora odio numquam ut labore doloribus et consequatur. Temporibus nam ut vero nam nesciunt iusto. Nesciunt est ut quia mollitia eum.<p></p>Iure cumque qui dolorum est. Ullam sit est sit modi natus sint. Dicta quo nobis et cum blanditiis. Voluptates doloremque quos quisquam totam explicabo enim facilis.<p></p>Corrupti optio sed quis maxime qui. Et quia et qui nulla rem eligendi omnis enim. Voluptas eaque voluptatem quam repudiandae eum aut eligendi.<p></p>Iure odit repellendus nihil aut. Autem cupiditate eos fugiat consequuntur corporis. Incidunt sunt laudantium et eligendi recusandae labore. Rem ducimus quia omnis dolor velit.<p></p>Voluptas voluptate nam accusantium provident officiis recusandae animi delectus. Eum necessitatibus dignissimos commodi porro et nam illum. Et sequi distinctio est.</p>', NULL, '2022-10-27 22:14:43', '2022-10-27 22:14:43'),
(20, 3, 2, 'Quis dolor.', 'labore-magni-impedit-quae-laboriosam-et-ut', 'Repellendus eum quas voluptas enim delectus laboriosam voluptatem nisi. Porro unde quia qui et. Similique quia vel rerum veniam qui enim eos.', '<p>Consequuntur ut sed nemo eos quasi et consectetur. Ipsa quos nobis corporis temporibus amet est aut. Consequatur voluptates totam facere molestiae earum molestias eaque.<p></p>Suscipit laborum qui hic omnis et illum. Culpa libero et quae magnam eos. Facere sunt sunt dolor aut inventore non facere.<p></p>Itaque omnis quo voluptas blanditiis cumque harum quibusdam. Modi delectus provident inventore esse.<p></p>Fugit ut quasi corrupti quisquam est dolores enim. Et dolorum asperiores vel. Et nulla enim nostrum placeat qui voluptatem reiciendis voluptatibus. Adipisci sit a provident qui maiores eos. Sit maiores et repudiandae cupiditate.<p></p>Id sed fugiat adipisci. Nemo omnis reiciendis quod cumque consectetur. Veniam repudiandae ex reiciendis deserunt temporibus.<p></p>Tempore et ut possimus nulla enim qui. Doloribus eos cum dolorum voluptate. Accusamus occaecati repudiandae et modi maxime repellat autem. Esse explicabo saepe magnam quo nobis.<p></p>Fugit ad blanditiis suscipit harum repudiandae et aliquid est. Et quidem cum soluta reprehenderit voluptatem est voluptas.</p>', NULL, '2022-10-27 22:14:43', '2022-10-27 22:14:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Martana Thamrin', 'gsitorus', 'ani14@example.net', '2022-10-27 22:14:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'NilUOyPoXG', '2022-10-27 22:14:43', '2022-10-27 22:14:43'),
(2, 'Arsipatra Pradana', 'setiawan.sabrina', 'widodo.jabal@example.com', '2022-10-27 22:14:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'uVOc8UMIFw', '2022-10-27 22:14:43', '2022-10-27 22:14:43'),
(3, 'Irma Suartini', 'zwasita', 'putra.jindra@example.net', '2022-10-27 22:14:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '8gswAmPAE1', '2022-10-27 22:14:43', '2022-10-27 22:14:43'),
(4, 'Lala Usada', 'rika65', 'xhastuti@example.org', '2022-10-27 22:14:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'ytNxXVOl3c', '2022-10-27 22:14:43', '2022-10-27 22:14:43'),
(5, 'Aslijan Irwan Manullang S.Gz', 'ika05', 'gunawan.yahya@example.net', '2022-10-27 22:14:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'UUSswSiXkS', '2022-10-27 22:14:43', '2022-10-27 22:14:43');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
