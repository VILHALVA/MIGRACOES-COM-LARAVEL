-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13/04/2024 às 21:49
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `migracoes`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`, `descricao`, `created_at`, `updated_at`) VALUES
(1, 'est', 'Nam modi ducimus aut et natus non. Est laboriosam quos voluptatem commodi soluta doloremque illum. Ut quas quidem cumque nisi consectetur ab.', '2024-04-13 22:47:38', '2024-04-13 22:47:38'),
(2, 'doloremque', 'Amet omnis nihil ea officiis ut tempora. Aut deserunt et voluptate odio natus. Vitae excepturi et praesentium culpa vel.', '2024-04-13 22:47:38', '2024-04-13 22:47:38'),
(3, 'provident', 'Velit hic saepe blanditiis veniam itaque ut illum. Ex vitae sed reiciendis tempore quia. Similique perspiciatis magni quia voluptatem fugit voluptates recusandae.', '2024-04-13 22:47:39', '2024-04-13 22:47:39'),
(4, 'a', 'Qui iure sunt labore rerum minus voluptatem officia. Ut porro molestiae beatae reiciendis non totam inventore. Quaerat minus aut sint sed quidem deserunt.', '2024-04-13 22:47:39', '2024-04-13 22:47:39'),
(5, 'suscipit', 'Non ea eum excepturi hic. Voluptas quidem esse et a harum atque animi. Ab sit officiis et illum suscipit nihil. Optio expedita ut in optio non quia distinctio nisi.', '2024-04-13 22:47:39', '2024-04-13 22:47:39');

-- --------------------------------------------------------

--
-- Estrutura para tabela `contatos`
--

CREATE TABLE `contatos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `cep` varchar(255) NOT NULL,
  `numero` varchar(255) NOT NULL,
  `whatsapp` varchar(255) NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_04_12_205252_create_categorias_table', 1),
(5, '2024_04_12_205253_produtos', 1),
(6, '2024_04_12_224710_regras', 1),
(7, '2024_04_12_224950_contatos', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `preco` double NOT NULL,
  `slug` varchar(255) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_categoria` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `preco`, `slug`, `imagem`, `id_user`, `id_categoria`, `created_at`, `updated_at`) VALUES
(1, 'Commodi fugiat animi ad consequatur dolore odit.', 'Ut sequi iste non eum quibusdam sed quae. Facere dolores odio libero quis dolorem quis. Eveniet tempora cum id non voluptatem nam vel in. Iure placeat et debitis consequuntur. Qui odio deserunt et dolore dolorem.', 63, 'commodi-fugiat-animi-ad-consequatur-dolore-odit', 'https://via.placeholder.com/400x400.png/003377?text=voluptatum', 1, 4, '2024-04-13 22:47:39', '2024-04-13 22:47:39'),
(2, 'Omnis velit tempore repudiandae sed.', 'Soluta illum aliquid tenetur. Dolores asperiores voluptatem ipsum nemo. Deleniti quidem vero deleniti illum est et sed.', 83, 'omnis-velit-tempore-repudiandae-sed', 'https://via.placeholder.com/400x400.png/006611?text=fugit', 1, 4, '2024-04-13 22:47:39', '2024-04-13 22:47:39'),
(3, 'Impedit culpa sint consectetur veritatis nostrum.', 'Voluptatum provident dicta esse consequatur ad. Pariatur quasi distinctio quis aliquid maxime quaerat quidem. Asperiores neque est adipisci.', 17, 'impedit-culpa-sint-consectetur-veritatis-nostrum', 'https://via.placeholder.com/400x400.png/00eeff?text=enim', 1, 1, '2024-04-13 22:47:40', '2024-04-13 22:47:40'),
(4, 'Aliquid suscipit ipsum omnis et.', 'Facere ipsa accusamus eaque cumque tempora est ut. Est earum repellendus veritatis qui minima. Excepturi corporis hic ducimus dolore.', 33, 'aliquid-suscipit-ipsum-omnis-et', 'https://via.placeholder.com/400x400.png/008888?text=voluptatem', 1, 5, '2024-04-13 22:47:40', '2024-04-13 22:47:40'),
(5, 'Omnis quia qui repudiandae impedit aliquid adipisci.', 'Assumenda commodi ullam rerum esse ratione in sed. Distinctio veniam expedita cupiditate porro qui optio. Eius officiis quis aliquid. Illo officia eligendi occaecati voluptatem rerum qui ea earum.', 42, 'omnis-quia-qui-repudiandae-impedit-aliquid-adipisci', 'https://via.placeholder.com/400x400.png/007744?text=ipsum', 1, 5, '2024-04-13 22:47:40', '2024-04-13 22:47:40'),
(6, 'Ea voluptatem repellat architecto.', 'Dolorem exercitationem nam provident aut eius. Doloremque ducimus mollitia minima animi. Dicta sint aut iure autem totam voluptatem magni.', 32, 'ea-voluptatem-repellat-architecto', 'https://via.placeholder.com/400x400.png/007744?text=qui', 1, 4, '2024-04-13 22:47:40', '2024-04-13 22:47:40'),
(7, 'Alias voluptas odit doloribus odit cum optio.', 'Amet cupiditate culpa voluptas. Non exercitationem saepe fugit ut possimus vel voluptatibus. Eius doloribus repudiandae aspernatur iusto. Et dicta nam adipisci optio et. Est qui sint error architecto.', 25, 'alias-voluptas-odit-doloribus-odit-cum-optio', 'https://via.placeholder.com/400x400.png/0022ff?text=ut', 1, 3, '2024-04-13 22:47:40', '2024-04-13 22:47:40'),
(8, 'Quos deserunt in consectetur nihil beatae iste.', 'Dolores sed et illum quo qui veniam. Placeat iusto error consequatur suscipit est rem aut. Eligendi accusantium quam officia repellat.', 39, 'quos-deserunt-in-consectetur-nihil-beatae-iste', 'https://via.placeholder.com/400x400.png/008888?text=harum', 1, 5, '2024-04-13 22:47:40', '2024-04-13 22:47:40'),
(9, 'Voluptas nobis et id dolor similique.', 'Voluptatem itaque nam illo corporis. Quod et facere voluptatem nostrum ipsa consequatur. Rem voluptates et labore architecto dolorem. Laborum libero est deleniti aut corrupti. Est possimus in saepe voluptate et et et doloremque.', 39, 'voluptas-nobis-et-id-dolor-similique', 'https://via.placeholder.com/400x400.png/003322?text=qui', 1, 2, '2024-04-13 22:47:40', '2024-04-13 22:47:40'),
(10, 'Aut distinctio ratione harum doloremque eos aliquid quod.', 'Dolorum itaque mollitia quia iusto in quisquam quas eaque. Deserunt id delectus dicta velit voluptatum qui. Ut nisi enim aut delectus.', 33, 'aut-distinctio-ratione-harum-doloremque-eos-aliquid-quod', 'https://via.placeholder.com/400x400.png/003344?text=consequuntur', 1, 5, '2024-04-13 22:47:40', '2024-04-13 22:47:40'),
(11, 'Aliquid in occaecati eveniet aspernatur fugiat ea laboriosam.', 'Optio rerum saepe dolor odio inventore. Id soluta quasi nisi vel. Cum nihil est ducimus error odit ipsa delectus.', 97, 'aliquid-in-occaecati-eveniet-aspernatur-fugiat-ea-laboriosam', 'https://via.placeholder.com/400x400.png/00ee99?text=qui', 1, 3, '2024-04-13 22:47:40', '2024-04-13 22:47:40'),
(12, 'Officia et optio omnis quia atque.', 'Reiciendis aut ad nesciunt sint. Ea repellendus non ipsum atque in totam nostrum. Qui consequatur unde saepe ab. Sit quia aut ut non possimus dolor ut doloremque.', 69, 'officia-et-optio-omnis-quia-atque', 'https://via.placeholder.com/400x400.png/00ee00?text=et', 1, 2, '2024-04-13 22:47:40', '2024-04-13 22:47:40'),
(13, 'Alias ipsam possimus explicabo adipisci unde recusandae.', 'Explicabo illum laborum odio molestiae omnis architecto minima. Dolor quibusdam id natus nihil esse ut dolor quasi. Est eveniet velit molestias occaecati deleniti ut commodi. Tempore veritatis aut quas corporis reprehenderit.', 16, 'alias-ipsam-possimus-explicabo-adipisci-unde-recusandae', 'https://via.placeholder.com/400x400.png/003366?text=non', 1, 2, '2024-04-13 22:47:40', '2024-04-13 22:47:40'),
(14, 'Vel est eveniet dicta in assumenda et.', 'Et ut voluptatibus nihil. Dolorum natus voluptatum id aut tempore unde aut quasi. Veniam officia id blanditiis sed. Nemo sed consequatur nisi modi repudiandae.', 93, 'vel-est-eveniet-dicta-in-assumenda-et', 'https://via.placeholder.com/400x400.png/008877?text=nihil', 1, 1, '2024-04-13 22:47:40', '2024-04-13 22:47:40'),
(15, 'Omnis quia nemo nihil.', 'Iusto et unde quis. Blanditiis quidem neque beatae ut corrupti possimus itaque. Rerum vel esse dolor. Voluptas ut sit aut est.', 91, 'omnis-quia-nemo-nihil', 'https://via.placeholder.com/400x400.png/00ff00?text=magni', 1, 3, '2024-04-13 22:47:40', '2024-04-13 22:47:40'),
(16, 'Doloremque voluptatibus unde eius eos reiciendis eum.', 'Similique mollitia beatae excepturi sed. Iusto qui tempore nobis ea excepturi recusandae natus dicta. Qui quis possimus a est itaque et. Maxime consequatur odio exercitationem alias sed esse eum sed.', 67, 'doloremque-voluptatibus-unde-eius-eos-reiciendis-eum', 'https://via.placeholder.com/400x400.png/00aa22?text=libero', 1, 4, '2024-04-13 22:47:40', '2024-04-13 22:47:40'),
(17, 'Possimus quia ipsa itaque.', 'Aspernatur voluptatem reprehenderit eos delectus ratione laborum qui atque. Vitae velit nihil ex qui aperiam. Error aut deleniti veniam ut iure voluptatum. Ut molestiae aut optio quo ad maxime animi molestiae. Eaque corrupti eius minus non nam.', 14, 'possimus-quia-ipsa-itaque', 'https://via.placeholder.com/400x400.png/004455?text=eos', 1, 4, '2024-04-13 22:47:40', '2024-04-13 22:47:40'),
(18, 'Placeat modi est sed in officiis inventore rerum et.', 'Aliquid minus nulla et. Dolorum eligendi in omnis. Magnam neque illum voluptas quisquam molestias numquam. Ea qui et magnam assumenda consectetur atque quia. Corrupti possimus aspernatur repudiandae dolore voluptatibus voluptatem.', 38, 'placeat-modi-est-sed-in-officiis-inventore-rerum-et', 'https://via.placeholder.com/400x400.png/005511?text=aut', 1, 1, '2024-04-13 22:47:41', '2024-04-13 22:47:41'),
(19, 'Magni voluptas doloremque et earum et.', 'Aut inventore ea eius vel quibusdam nobis facilis libero. Ut quidem corporis esse totam. Quo praesentium doloribus et pariatur vel alias suscipit. Est alias excepturi delectus odio maiores.', 76, 'magni-voluptas-doloremque-et-earum-et', 'https://via.placeholder.com/400x400.png/007788?text=illo', 1, 2, '2024-04-13 22:47:41', '2024-04-13 22:47:41'),
(20, 'Ut et et ipsam.', 'Pariatur aliquid perferendis est vitae. Inventore vitae velit sint rem.', 72, 'ut-et-et-ipsam', 'https://via.placeholder.com/400x400.png/00bbff?text=illo', 1, 1, '2024-04-13 22:47:41', '2024-04-13 22:47:41');

-- --------------------------------------------------------

--
-- Estrutura para tabela `regras`
--

CREATE TABLE `regras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `regra_user`
--

CREATE TABLE `regra_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_regra` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('iRCyDJxVJ8sRsiR19ojGhObNdSA2yKpIOsjK8S3B', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOFRBcGtsbzNydEcyOW0zZXl5UVlVbE9RUUg0S2NFQk5OYnFBSlprNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713036356),
('jxLy02xo6yc54y8nP7wWomW4hDSmzQHxFPDjiyjn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYVNVTldSRXBYNGlTbzN6SVp3WVU1MTdHY0doOFVoZ0hJYjVIU1RHUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1713036347);

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rodrigo', 'Oliveira', 'contato@rodrigo.com', NULL, '$2y$12$FTxFyuBlw43FNAE1ZsK0ROGhjOP0VsMPnQyo1leqQaAm6/0/oI/ke', NULL, '2024-04-13 22:36:26', '2024-04-13 22:36:26');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Índices de tabela `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Índices de tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contatos_id_user_foreign` (`id_user`);

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices de tabela `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Índices de tabela `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produtos_id_user_foreign` (`id_user`),
  ADD KEY `produtos_id_categoria_foreign` (`id_categoria`);

--
-- Índices de tabela `regras`
--
ALTER TABLE `regras`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `regra_user`
--
ALTER TABLE `regra_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regra_user_id_user_foreign` (`id_user`),
  ADD KEY `regra_user_id_regra_foreign` (`id_regra`);

--
-- Índices de tabela `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `contatos`
--
ALTER TABLE `contatos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `regras`
--
ALTER TABLE `regras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `regra_user`
--
ALTER TABLE `regra_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `contatos`
--
ALTER TABLE `contatos`
  ADD CONSTRAINT `contatos_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `produtos_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `regra_user`
--
ALTER TABLE `regra_user`
  ADD CONSTRAINT `regra_user_id_regra_foreign` FOREIGN KEY (`id_regra`) REFERENCES `regras` (`id`),
  ADD CONSTRAINT `regra_user_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
