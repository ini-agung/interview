-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2022 at 02:38 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir-putra`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `qr` varchar(255) NOT NULL,
  `kode_barang` varchar(50) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `stok` int(11) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `harga_beli` decimal(10,0) NOT NULL,
  `harga_jual` decimal(10,0) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `img` varchar(50) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `qr`, `kode_barang`, `nama_barang`, `deskripsi`, `stok`, `satuan`, `harga_beli`, `harga_jual`, `kategori_id`, `supplier_id`, `img`, `created_date`) VALUES
(1, 'cc17032022', 'CC001', 'Chocolatos', 'Chocolatos (sebelumnya Gery Chocolatos sejak tahun 2006-2012) adalah wafer stick dengan krim cokelat Italia diproduksi oleh PT. Garudafood Putra Putri Jaya yang diluncurkan sejak bulan November 2006', 100, 'biji', '1000', '1500', 1, 1, 'default.jpg', '2022-03-17 07:02:58'),
(2, 'ka18032022', 'KA002', 'Kacang Atom', 'Kacang atom atau kacang sukro adalah produk kacang favorit orang Indonesia. Teksturnya renyah dengan rasa gurih nagih karena dilapisi tepung bumbu', 100, 'pack', '500', '1000', 1, 1, 'default.jpg', '2022-03-18 03:29:09'),
(3, 'Q$538870', 'KD4272', 'Voluptatum enim.', 'Qui aut vel culpa amet cum totam dolorem earum in voluptatem in nulla ab ut voluptatem ut blanditiis praesentium molestias occaecati necessitatibus voluptatem minus laborum quibusdam voluptatibus et harum vero voluptas non delectus vel magnam ut similique nesciunt omnis harum est ut et.', 8, 'dus', '71000', '48000', 3, 3, 'img5187.jpg', '2022-03-18 04:21:58'),
(4, 'Q$296795', 'KD5486', 'Cupiditate ab.', 'Nihil ut neque et eius est quidem labore enim amet eligendi voluptatibus eos laudantium ea maiores vitae reprehenderit quo dolore cum ut aut minima velit voluptatibus numquam iure quo accusantium itaque esse molestiae rerum aut ut distinctio qui assumenda quibusdam blanditiis voluptatem itaque minima et reprehenderit eveniet voluptatem nemo aperiam odit.', 1, 'biji', '8000', '16000', 3, 3, 'img2785.jpg', '2022-03-18 04:22:09'),
(5, 'Q$500866', 'KD0597', 'Et dolores sit.', 'Magnam est quod ea dolores voluptatum mollitia possimus blanditiis alias voluptatem mollitia pariatur qui perferendis quasi perspiciatis fugit nam vero sapiente esse explicabo temporibus sunt voluptas in consequuntur sapiente dolore ipsum et voluptatem eum a qui voluptatibus delectus animi quibusdam laudantium facere assumenda tenetur quia aut in qui molestias quas magnam sed blanditiis consequatur delectus laboriosam doloribus ducimus veritatis dolores earum.', 9, 'biji', '76000', '1000', 2, 2, 'img6543.jpg', '2022-03-18 04:22:09'),
(6, 'Q$106902', 'KD2897', 'Expedita voluptatem.', 'Quia rerum blanditiis optio rerum quia quos quo enim voluptate vel eos amet velit natus magni rem ipsum incidunt deserunt ad minima asperiores natus rerum beatae sit ullam aut natus natus repellat aut quia similique aut quod voluptate autem omnis doloribus ut consequatur possimus eligendi odio aliquid voluptas vel omnis dolor eius voluptas sint cumque impedit inventore magni voluptatem non.', 7, 'pack', '85000', '49000', 3, 3, 'img5700.jpg', '2022-03-18 04:22:09'),
(7, 'Q$510285', 'KD2353', 'Occaecati saepe ad.', 'Quam quod modi veritatis veritatis ipsa vel velit asperiores assumenda qui porro quis reprehenderit neque quis porro eos et sunt vitae voluptatem voluptatem non illo doloribus sed recusandae earum laborum labore aspernatur in nostrum inventore sapiente vel commodi repellendus illum quo fuga ad et.', 4, 'biji', '87000', '3000', 3, 2, 'img4952.jpg', '2022-03-18 04:22:09'),
(8, 'Q$134069', 'KD0024', 'Quasi aliquam quo.', 'Est eveniet praesentium voluptate debitis non et iure sit exercitationem eligendi voluptatibus aut vitae magnam omnis explicabo doloremque debitis neque illum ipsum repudiandae molestiae consequuntur sed qui est eius ducimus dolorem quas.', 0, 'biji', '99000', '54000', 3, 2, 'img2163.jpg', '2022-03-18 04:22:09'),
(9, 'Q$401435', 'KD7340', 'Velit fugiat modi.', 'Itaque molestias sequi assumenda impedit repudiandae laudantium voluptatem expedita eius id est architecto illum velit labore veritatis enim consequatur dolorem quia ullam qui natus inventore pariatur voluptatem alias vel reprehenderit magni ut et laudantium ad ratione ullam aperiam nihil explicabo delectus ratione sunt dignissimos sapiente illum velit nemo voluptas cumque.', 8, 'biji', '25000', '96000', 1, 3, 'img3773.jpg', '2022-03-18 04:22:09'),
(10, 'Q$829394', 'KD0447', 'Omnis sed.', 'Amet et nam modi dolore sed omnis eius sed aliquam quae voluptas deserunt minima explicabo illum nostrum non suscipit nesciunt est neque recusandae beatae vel quia sed repudiandae nihil officia exercitationem dolore omnis repellat illum inventore consequatur voluptatem ducimus eum odit omnis rerum fugit asperiores eum aut fuga occaecati repellendus facere sapiente et aperiam qui culpa repellat tempora nostrum hic repellendus vitae nemo amet.', 0, 'pack', '46000', '70000', 2, 3, 'img9926.jpg', '2022-03-18 04:22:09'),
(11, 'Q$437297', 'KD8613', 'Minus beatae dolorum.', 'Et mollitia facilis ut aliquam voluptas ducimus quibusdam voluptatem neque tenetur eligendi vero nihil eum rerum vitae amet quia nihil ea et commodi tenetur et porro hic aut et explicabo voluptatem nam numquam saepe quisquam quisquam nesciunt ea rerum ut qui sed maiores corporis in autem ipsum quia autem commodi mollitia odio quidem quidem.', 0, 'pack', '85000', '78000', 2, 2, 'img5704.jpg', '2022-03-18 04:22:09'),
(12, 'Q$844388', 'KD6694', 'Minima deleniti nihil.', 'Sint et aut reprehenderit sit atque molestiae sit quasi quo omnis delectus reiciendis ducimus est enim magnam consequatur necessitatibus magni rerum nulla id provident architecto ut velit hic vel inventore aut adipisci esse eveniet qui labore sit in praesentium perspiciatis quos ea.', 7, 'dus', '64000', '64000', 1, 1, 'img0214.jpg', '2022-03-18 04:22:09'),
(13, 'Q$612231', 'KD6626', 'Corporis sapiente.', 'Nisi aut odio iusto expedita et dolore voluptatem nam qui itaque voluptatem totam voluptatibus delectus cumque veritatis qui et soluta iste tempora blanditiis sit non sed est nulla explicabo harum ut esse et quis voluptatibus porro molestiae est blanditiis et.', 5, 'dus', '70000', '56000', 1, 1, 'img9818.jpg', '2022-03-18 04:22:09'),
(14, 'Q$904695', 'KD9963', 'Quia deserunt.', 'Quas voluptate quasi alias modi est maiores nesciunt necessitatibus cum magnam quia aut voluptate suscipit qui culpa rerum quibusdam delectus sint laudantium qui libero inventore adipisci aut id et molestiae et occaecati soluta perferendis voluptatem distinctio est rerum porro aut aliquam voluptas harum quae quod cupiditate atque dolorem cumque debitis optio incidunt commodi repellendus quisquam ut officia suscipit inventore ea est possimus est veniam et labore eveniet et voluptate.', 5, 'dus', '94000', '11000', 3, 2, 'img5834.jpg', '2022-03-18 04:22:09'),
(15, 'Q$435560', 'KD3481', 'Aut ratione nihil.', 'Nobis consectetur dolore et ea itaque facere ratione occaecati magnam laboriosam accusamus et perferendis eveniet ea molestiae voluptatem voluptas qui sed ducimus sed id ad id delectus qui nemo magni non excepturi sit accusamus fugit sed omnis distinctio vel ex ut ea nemo natus animi et officia ut sed mollitia in sit sit occaecati laborum.', 8, 'pack', '56000', '21000', 1, 1, 'img2332.jpg', '2022-03-18 04:22:09'),
(16, 'Q$401301', 'KD9166', 'Molestiae neque.', 'Eum voluptatibus tempore iusto et accusamus tempore illo doloremque sed illo corrupti facere consectetur error rerum consequatur expedita earum aspernatur est fugit eos architecto omnis soluta veritatis et ut dolorem quasi.', 1, 'biji', '52000', '31000', 2, 1, 'img4097.jpg', '2022-03-18 04:22:09'),
(17, 'Q$571163', 'KD9295', 'Eos harum numquam.', 'Non ipsum harum aut excepturi in excepturi aut quis commodi et dolorem iure officia impedit sit eum nihil expedita cupiditate qui dolores in aperiam nesciunt atque id sed soluta iure quia est dolor optio rerum inventore non eum rerum voluptas nemo aliquam autem fuga id et ut rerum provident non enim amet incidunt laboriosam aliquid.', 2, 'dus', '22000', '97000', 3, 1, 'img4401.jpg', '2022-03-18 04:22:09'),
(18, 'Q$879424', 'KD1306', 'Et enim tempora.', 'Nihil minima esse autem dicta blanditiis nobis fugit incidunt tempore repudiandae ut quae molestiae eos est vitae nihil inventore quis occaecati sit provident quidem quis cum recusandae aspernatur temporibus et sed voluptates est quasi vero id doloremque laborum consectetur at aut ab asperiores exercitationem necessitatibus autem quasi eum.', 5, 'biji', '58000', '45000', 2, 3, 'img3520.jpg', '2022-03-18 04:22:09'),
(19, 'Q$527821', 'KD0196', 'Et saepe.', 'Dolorem ea ipsum sit in corrupti repellendus earum qui nobis vel aut reprehenderit est suscipit minima porro molestias optio dolorem deleniti voluptas ea possimus cupiditate ut quos vel sapiente fugit dolores ad voluptatem quibusdam quis quis ipsum atque quasi quibusdam et officia debitis eos voluptas sunt repellat est laudantium debitis qui ex aut ipsam nihil consequatur nam sed consequatur eveniet nulla placeat beatae temporibus rerum suscipit alias molestiae esse consequatur officiis.', 4, 'biji', '86000', '58000', 1, 2, 'img1750.jpg', '2022-03-18 04:22:09'),
(20, 'Q$726767', 'KD0123', 'Velit aspernatur molestiae.', 'Voluptatem et magni magnam dolor possimus earum aut provident est excepturi eum aliquam fuga ab maiores animi et sapiente et blanditiis dolorum aliquam odit rerum nihil illo quod voluptatem harum qui qui sint perspiciatis et ut suscipit inventore aut dignissimos accusamus omnis ut in tempora omnis nemo eos illo suscipit iusto accusantium eum beatae ut voluptate molestias reiciendis nihil est quaerat et inventore molestiae est.', 3, 'dus', '34000', '33000', 3, 2, 'img4216.jpg', '2022-03-18 04:22:09'),
(21, 'Q$579253', 'KD9647', 'Laboriosam sit ut.', 'Commodi commodi amet provident at exercitationem veritatis atque qui assumenda ut accusantium ea harum porro minus saepe minus est autem voluptate laboriosam porro necessitatibus amet perspiciatis earum aspernatur omnis hic doloribus provident nostrum enim vitae molestiae consequatur deserunt officia voluptatem quae delectus et dolor illum.', 0, 'biji', '49000', '33000', 3, 2, 'img9162.jpg', '2022-03-18 04:22:09'),
(22, 'Q$811427', 'KD8070', 'Voluptas tempora.', 'Non odit odit ut et sed excepturi ea consequatur ut quasi porro dignissimos nobis error non maxime sint necessitatibus dolorum est doloremque impedit suscipit sit autem non quidem mollitia impedit assumenda porro et nesciunt deserunt et non architecto assumenda vel nesciunt animi sapiente dolor nesciunt expedita aut laborum qui placeat aut tempora sed dolorem labore et dolorem ducimus veniam ipsam nihil laudantium expedita vero sed repellat ex sed quos.', 6, 'pack', '94000', '11000', 1, 1, 'img2559.jpg', '2022-03-18 04:22:09'),
(23, 'Q$759672', 'KD0154', 'Id voluptatem.', 'Ipsa dolorem iusto est autem at eius perspiciatis iste excepturi sit molestias corporis labore est ut molestiae saepe molestiae quae non ut odit repudiandae autem qui dolores aut ut eum totam voluptas aut ad et nisi consequuntur sint iure velit ex ut qui et sint dolore amet ut sed quibusdam minus aliquam omnis dolores quos sint adipisci dolores quia.', 9, 'pack', '0', '52000', 3, 3, 'img6133.jpg', '2022-03-18 04:22:09'),
(24, 'Q$280890', 'KD6441', 'Dolores nostrum.', 'Dolorum delectus optio voluptas animi veritatis exercitationem corrupti ratione nesciunt nemo eos assumenda illum iusto voluptatum qui rerum doloremque accusamus natus dolorem et sunt in veritatis omnis temporibus dolores sit cumque odit dignissimos quaerat.', 9, 'pack', '64000', '0', 2, 2, 'img3402.jpg', '2022-03-18 04:22:09'),
(25, 'Q$796702', 'KD7213', 'Maiores est neque.', 'Rerum dolores quibusdam perferendis aperiam est reiciendis dignissimos soluta tempore ut qui non in ut nihil porro natus sint dolor corporis non provident nobis ducimus non magni molestias voluptate sequi facilis nesciunt et illum necessitatibus enim error cum assumenda voluptatem.', 7, 'pack', '32000', '67000', 3, 2, 'img4460.jpg', '2022-03-18 04:22:09'),
(26, 'Q$707228', 'KD4427', 'Occaecati dolor.', 'Omnis architecto quia vero et non rerum est ea necessitatibus corrupti iste aut ipsam fuga in alias voluptatum asperiores quod iure voluptatibus voluptas iure consequuntur consequatur aut voluptas beatae autem in tempora deserunt quia quo et deleniti id delectus corporis quo laborum non blanditiis iure omnis quisquam laboriosam atque eos fuga eos nam illum voluptatibus.', 0, 'dus', '46000', '58000', 3, 1, 'img7508.jpg', '2022-03-18 04:22:09'),
(27, 'Q$911396', 'KD0376', 'Consequatur reprehenderit.', 'Dolore nihil ea quae voluptatibus dolor autem deserunt aut voluptas ea voluptas debitis beatae tempore esse aut similique et expedita rerum quibusdam sed ea suscipit et maxime aperiam temporibus voluptas dolor rerum molestias est temporibus aliquid repellat ut qui quibusdam repellendus quasi magni dolor assumenda voluptas consectetur exercitationem illo sed ea beatae id sit quisquam consequuntur eveniet.', 4, 'biji', '97000', '36000', 3, 1, 'img0639.jpg', '2022-03-18 04:22:09'),
(28, 'Q$453204', 'KD8916', 'Expedita tempora voluptas.', 'In laborum laudantium quaerat debitis et ipsam voluptas libero porro dolorem at et aliquam in delectus inventore et sunt soluta possimus et sequi placeat atque corrupti aut aut velit ea atque ab fuga id enim sequi consequuntur provident blanditiis consectetur quaerat odit recusandae.', 1, 'dus', '7000', '86000', 2, 2, 'img7785.jpg', '2022-03-18 04:22:09'),
(29, 'Q$248556', 'KD1253', 'Labore et rerum.', 'Aut amet facilis recusandae et tenetur quis ut porro et quod quis velit fuga nihil repellendus est aperiam maiores dicta voluptas omnis veniam eos distinctio eius dolores laborum voluptatem nisi consequatur similique eum ea atque atque rerum quos et blanditiis unde accusantium culpa quis deserunt praesentium sit qui corrupti harum sed vel quod recusandae numquam dolorum et soluta id repellat nostrum pariatur nihil cupiditate veritatis nesciunt illum.', 8, 'pack', '85000', '55000', 2, 2, 'img9385.jpg', '2022-03-18 04:22:09'),
(30, 'Q$637293', 'KD4800', 'Ad laudantium.', 'Et fugiat magnam omnis libero ut architecto iste ipsam esse a et totam molestiae quia accusamus molestiae perspiciatis neque consequatur velit laboriosam numquam fugit magni doloremque sint in aut vel vero accusantium debitis non dolor voluptatem blanditiis tenetur consequuntur molestiae omnis delectus sint blanditiis voluptas debitis quam ut rerum quis iure rem enim.', 8, 'biji', '49000', '68000', 3, 2, 'img4314.jpg', '2022-03-18 04:22:09'),
(31, 'Q$233075', 'KD8980', 'Perferendis tenetur.', 'Quaerat perspiciatis exercitationem cum quam voluptas officia amet ex sequi facilis est eos soluta accusantium repellendus sit rerum repellendus ipsa architecto et dignissimos id non ut ab itaque nam non veritatis architecto quis ipsam.', 3, 'pack', '22000', '63000', 1, 1, 'img4274.jpg', '2022-03-18 04:22:09'),
(32, 'Q$215877', 'KD6343', 'Reprehenderit nobis.', 'Vel ex quasi sint voluptas nobis nemo ut alias minima temporibus fugiat tenetur rerum earum expedita omnis qui ipsum dolorum placeat cupiditate voluptatem aut quaerat laudantium vero quasi distinctio delectus eveniet sed amet libero quisquam et eos placeat eius fugit rerum et corporis soluta sed et aut ut reprehenderit rerum magnam qui consequatur rem doloremque dolore quia veritatis ea eveniet provident veniam autem molestiae et tempore et eaque quos saepe.', 4, 'dus', '39000', '79000', 2, 1, 'img5933.jpg', '2022-03-18 04:22:09'),
(33, 'Q$682515', 'KD5655', 'Cumque quaerat rerum.', 'Explicabo aut quia explicabo sit veniam dolorem autem totam sint explicabo iste placeat alias corrupti tempore et impedit exercitationem exercitationem iure consectetur corrupti a eligendi aspernatur occaecati eius est cumque vero deserunt quibusdam rem amet et iste eius quos quis reprehenderit deserunt exercitationem et et eos quidem iure unde quisquam quia fugit sequi illum non neque omnis ullam quasi optio et laborum amet vel at.', 6, 'dus', '94000', '96000', 1, 3, 'img9435.jpg', '2022-03-18 04:22:09'),
(34, 'Q$243997', 'KD2726', 'Non dolores.', 'Fuga blanditiis aperiam beatae ut sequi praesentium ab vero a asperiores accusamus minima dignissimos quibusdam id dolor eligendi aut sunt iure et id dolor ut in sed totam possimus maxime totam et et aliquam eligendi enim deserunt aut fuga quia non incidunt vitae eum iure sunt reprehenderit et architecto at qui id facilis quibusdam quam incidunt rem enim eaque quas adipisci eligendi vel officia.', 9, 'biji', '16000', '52000', 1, 3, 'img7441.jpg', '2022-03-18 04:22:09'),
(35, 'Q$539728', 'KD8176', 'Et corrupti consectetur.', 'Voluptatem totam sit nihil distinctio ut maxime ducimus ut vel magnam recusandae aperiam aperiam inventore culpa nobis facere velit quod veritatis ipsam fugit quis nisi hic rerum est magnam autem deserunt et quia possimus perferendis repellat dignissimos repellat sunt sit ab quae laudantium amet eum quia aut qui molestiae soluta nemo.', 2, 'biji', '29000', '80000', 3, 2, 'img7791.jpg', '2022-03-18 04:22:09'),
(36, 'Q$172469', 'KD1729', 'Delectus sequi.', 'Enim iusto quidem enim non autem quo ex deserunt voluptas quae voluptatum qui ut qui voluptatem molestiae qui dolor et quis eaque nesciunt in accusamus est dolor dolor reprehenderit officia deleniti commodi ad velit nesciunt voluptatem perspiciatis aut non et commodi tempora dicta ut ipsa minus aut consequatur in dolor aliquid deleniti aliquam qui autem nihil.', 6, 'pack', '27000', '33000', 2, 3, 'img8445.jpg', '2022-03-18 04:22:09'),
(37, 'Q$580023', 'KD9284', 'Consequatur eos.', 'Nam non omnis nostrum fugit dolores architecto assumenda distinctio et corrupti sit molestiae qui praesentium odio aliquid aut tenetur unde voluptatem unde explicabo quis saepe inventore id aliquid aut et dolor officia fugit quasi esse deserunt sunt dignissimos dolore libero iusto temporibus rerum nam provident numquam illum sapiente accusamus nisi cupiditate explicabo voluptas similique maiores aut quae.', 7, 'biji', '68000', '10000', 2, 2, 'img1503.jpg', '2022-03-18 04:22:09'),
(38, 'Q$127956', 'KD6824', 'Voluptatem rerum quasi.', 'Voluptatem modi doloribus cupiditate hic laudantium velit aperiam earum ut et delectus doloribus blanditiis aperiam itaque voluptas dolore excepturi et doloremque nisi quo dolor non pariatur quas fugit culpa omnis et eum laudantium omnis natus mollitia omnis vitae cum placeat consequatur aut occaecati harum nulla rerum vel blanditiis asperiores iure sit qui corrupti sit.', 5, 'biji', '34000', '32000', 2, 1, 'img8627.jpg', '2022-03-18 04:22:09'),
(39, 'Q$464811', 'KD0293', 'Ab et non.', 'Quis sit ipsum maiores qui enim ex deserunt architecto dolorem repellendus et voluptatem quia recusandae omnis magni enim inventore dolore nobis omnis est facere ut ut delectus dolorem ut officiis corrupti inventore aut quibusdam sed veritatis labore magni ullam a voluptas quidem nostrum cum et laboriosam et magni nihil sint voluptates consequatur in nihil blanditiis non a.', 5, 'dus', '23000', '12000', 2, 2, 'img3632.jpg', '2022-03-18 04:22:09'),
(40, 'Q$028658', 'KD5447', 'Repellendus praesentium aut.', 'Adipisci itaque sed ullam consequuntur consectetur molestiae sequi maxime accusantium eum quia maiores provident provident consequatur qui dolores nihil at est et iste quidem tempora facilis in dolore labore voluptatem ut unde omnis sequi unde pariatur soluta ullam perferendis reprehenderit officia recusandae error tempore ut quia consectetur quo maiores quas inventore blanditiis aut repellendus voluptas.', 0, 'dus', '94000', '95000', 3, 1, 'img8387.jpg', '2022-03-18 04:22:09'),
(41, 'Q$273923', 'KD4899', 'Voluptates adipisci.', 'Quibusdam et voluptatem exercitationem aut consectetur delectus expedita explicabo impedit odio quia non dolores aut qui atque fuga deleniti laboriosam dolorum enim recusandae voluptatibus nihil velit molestiae enim velit autem fugiat qui qui tempora consectetur nesciunt rerum eius id enim id qui at sint dolorem sequi sit beatae quisquam sed beatae ipsam sint sint voluptatum exercitationem qui.', 9, 'pack', '4000', '0', 1, 3, 'img8676.jpg', '2022-03-18 04:22:09'),
(42, 'Q$893699', 'KD9771', 'Tempore quia.', 'Est voluptatibus autem nesciunt cumque incidunt ducimus nostrum quos qui ipsum ipsum voluptas officia quibusdam veniam quis perspiciatis nulla quia in quo animi maiores est quia iure minus distinctio deserunt reprehenderit.', 1, 'pack', '29000', '82000', 2, 2, 'img2365.jpg', '2022-03-18 04:22:09'),
(43, 'Q$388920', 'KD7023', 'Veritatis omnis neque.', 'Exercitationem pariatur placeat quod magnam excepturi recusandae rerum cupiditate quod maiores odit voluptatem veniam occaecati pariatur sapiente quibusdam ratione possimus et voluptas velit ullam sed repellat nobis quibusdam consequatur laborum quia voluptate molestiae esse ut quos sit hic et dignissimos voluptatem nulla nam delectus sit odio iste totam fugiat aspernatur sint quasi totam perferendis deleniti accusamus et pariatur tempore consequatur voluptas ipsum eos ut repellat et velit beatae voluptates delectus.', 0, 'pack', '15000', '57000', 2, 2, 'img2322.jpg', '2022-03-18 04:22:09'),
(44, 'Q$262601', 'KD3448', 'Eligendi officiis.', 'Id et impedit maxime molestias totam eligendi praesentium incidunt eos voluptas quasi nemo consequatur eum repellendus minus blanditiis dolorum et necessitatibus delectus qui ut dolores laudantium voluptatem eum aut id sapiente velit reiciendis inventore.', 0, 'biji', '4000', '53000', 1, 1, 'img3420.jpg', '2022-03-18 04:22:09'),
(45, 'Q$754635', 'KD0997', 'Non voluptatem ab.', 'Sunt eos excepturi quam asperiores doloribus ea delectus aspernatur corrupti optio voluptates a provident sit et hic quidem voluptatem reiciendis minus ratione eos sit voluptas ab est error harum autem fugit ullam voluptas et aperiam.', 5, 'pack', '88000', '22000', 2, 2, 'img8379.jpg', '2022-03-18 04:22:09'),
(46, 'Q$187100', 'KD0643', 'Quam nisi.', 'Eum dolorum temporibus a atque officia et enim molestiae modi modi laudantium facilis occaecati autem culpa necessitatibus reiciendis consequatur tempore sed et totam hic facere aliquid est sed quia quas est minima illo recusandae vel maiores qui ad cum officiis est consequuntur dolor facilis blanditiis.', 1, 'pack', '21000', '19000', 1, 2, 'img3770.jpg', '2022-03-18 04:22:09'),
(47, 'Q$403087', 'KD2651', 'Voluptatibus ab.', 'Suscipit dolorem repudiandae sed corrupti dolor quae consequatur itaque sed deleniti aut vero iste delectus magni doloremque hic tempore ipsum corporis aut ex nihil maxime atque nisi et deleniti quae totam qui labore provident in occaecati nobis voluptate doloremque inventore dolorem voluptates deserunt ratione et natus quas minus voluptates sapiente unde provident tempora reiciendis vel qui nobis ut rerum at laboriosam odit qui repellendus officiis culpa libero ab quia officiis.', 5, 'dus', '93000', '67000', 2, 3, 'img4757.jpg', '2022-03-18 04:22:09'),
(48, 'Q$268595', 'KD5201', 'Rerum in.', 'Est occaecati non qui tempore quia ut sed repellendus dolor enim inventore et voluptatem sit dolor quis aut id officiis facilis voluptatem iure corrupti libero unde rem facilis consequatur libero culpa qui.', 8, 'pack', '62000', '67000', 3, 3, 'img7404.jpg', '2022-03-18 04:22:09'),
(49, 'Q$347500', 'KD6091', 'Necessitatibus qui doloremque.', 'Voluptatibus ea ea amet laborum ut molestiae dolorum velit minima et pariatur accusantium velit qui consequatur ut soluta quis sapiente ut voluptatem labore doloremque aperiam incidunt voluptatem a architecto quia molestiae est mollitia praesentium consequatur et natus ut.', 8, 'pack', '38000', '19000', 1, 1, 'img6721.jpg', '2022-03-18 04:22:09'),
(50, 'Q$185167', 'KD6728', 'Fugit quisquam.', 'Veniam ea voluptas est amet qui sit culpa quis culpa qui nostrum tempora reprehenderit quod repudiandae voluptatem praesentium deserunt sint esse ad corporis fuga excepturi commodi nihil vel commodi aut placeat ex sed mollitia sint id officia delectus iusto vitae voluptate repudiandae pariatur cupiditate pariatur necessitatibus recusandae dolores sit.', 9, 'pack', '43000', '26000', 2, 1, 'img2522.jpg', '2022-03-18 04:22:09'),
(51, 'Q$387255', 'KD8605', 'Ut aspernatur neque.', 'Sit aut voluptatibus pariatur eveniet sequi et fugit rerum aliquam saepe qui earum dolores necessitatibus numquam aperiam consequatur tenetur atque praesentium voluptatem tempore iure veniam blanditiis ut ut aut voluptates unde consequatur et animi exercitationem odit doloribus ut quos officia blanditiis corrupti itaque dignissimos sapiente dolor pariatur eum beatae corporis laborum sunt aut aut cum perspiciatis quis qui.', 6, 'biji', '42000', '24000', 2, 3, 'img9544.jpg', '2022-03-18 04:22:09'),
(52, 'Q$976090', 'KD3605', 'Illum consectetur aut.', 'Tenetur enim voluptatum qui et molestiae et itaque laboriosam esse dolore adipisci temporibus neque sit odit praesentium et omnis qui dignissimos rerum ipsum porro a animi quis maxime et aliquam dolorum quis possimus maxime rerum ducimus aut similique voluptatem quidem eos minus eos similique doloremque dicta nisi.', 5, 'biji', '26000', '57000', 2, 1, 'img2230.jpg', '2022-03-18 04:22:09'),
(53, 'Q$097765', 'KD0922', 'At facere.', 'Perspiciatis eligendi illo quaerat enim molestiae dolores accusantium illum aperiam praesentium iure odit omnis omnis id quo tempore sed et laudantium in rerum nihil aliquam nam laudantium a est sint quaerat dolore illum consectetur aut.', 3, 'dus', '76000', '15000', 1, 3, 'img5669.jpg', '2022-03-18 04:22:09'),
(54, 'Q$729205', 'KD8816', 'Rerum qui maxime.', 'Qui unde rerum temporibus doloribus assumenda excepturi harum fugiat tenetur consequatur dolor repellendus beatae consequatur necessitatibus qui asperiores libero maxime aut corporis vel enim modi nisi aut omnis fugiat aperiam sint consequuntur ipsam voluptates molestias recusandae accusantium sunt dolorem et ut consectetur non doloribus voluptatibus sit accusamus quos perferendis rerum dolorem deleniti praesentium hic maiores libero nulla.', 2, 'biji', '17000', '94000', 3, 1, 'img1655.jpg', '2022-03-18 04:22:09'),
(55, 'Q$196967', 'KD4521', 'Culpa quasi animi.', 'Qui quis non doloribus assumenda nemo harum quo voluptas dolor vero cum aut doloremque aut iure dolores aut nam aut voluptas expedita neque laudantium expedita adipisci harum dicta in laborum sit eum ipsam laborum voluptatem iste assumenda ut nesciunt qui et minima eum nobis delectus.', 1, 'biji', '3000', '92000', 3, 3, 'img9101.jpg', '2022-03-18 04:22:09'),
(56, 'Q$227685', 'KD5437', 'Voluptatum consequatur aliquid.', 'Similique sed nesciunt temporibus atque rerum est praesentium et blanditiis est laboriosam ut architecto ipsum recusandae rerum aperiam qui facilis illum fugit et veritatis voluptas iusto sit et rerum ut blanditiis laborum qui dolor labore voluptates quia impedit totam accusantium exercitationem blanditiis eos quia occaecati vel incidunt aut ducimus.', 0, 'biji', '66000', '81000', 2, 2, 'img0814.jpg', '2022-03-18 04:22:09'),
(57, 'Q$895369', 'KD0327', 'Et fugit.', 'Dolor asperiores quis illum a expedita fugiat sed dolor pariatur itaque non quisquam debitis natus asperiores laboriosam excepturi accusamus sit dolor animi reiciendis non sunt suscipit consequatur dolorem ad fugiat excepturi adipisci fuga nisi sit nam unde qui temporibus sapiente ut optio eius exercitationem voluptate ut ut qui.', 3, 'dus', '21000', '8000', 2, 1, 'img1935.jpg', '2022-03-18 04:22:09'),
(58, 'Q$031232', 'KD8565', 'Excepturi quo sit.', 'Quo sit fuga aliquid sunt iusto qui a incidunt atque expedita error numquam non expedita enim sed est ipsum labore ex illo dolorem consequatur ut aut quisquam neque iusto odit omnis.', 6, 'dus', '17000', '83000', 2, 1, 'img9548.jpg', '2022-03-18 04:22:09'),
(59, 'Q$089945', 'KD2864', 'Est aut.', 'Dicta cumque aliquam in ducimus sit consequatur ullam et cumque aut eveniet ad omnis doloremque officia quaerat quia voluptate omnis itaque asperiores adipisci sunt delectus dolorum porro voluptas suscipit est dolorem sint a libero dolores sit voluptatem id et optio doloremque odit laudantium ab corporis nostrum dignissimos quisquam sint dolor voluptatem maiores natus minus praesentium excepturi dolores est maiores placeat voluptates eos.', 0, 'dus', '60000', '12000', 2, 2, 'img6699.jpg', '2022-03-18 04:22:09'),
(60, 'Q$566483', 'KD2028', 'Illum mollitia deleniti.', 'Sit veritatis et aspernatur tempore adipisci et ad cumque velit qui cum non amet eos ipsa ratione eveniet minus autem molestias ipsa dolorem veniam qui libero aut quia soluta sint hic inventore.', 6, 'pack', '92000', '92000', 1, 1, 'img2704.jpg', '2022-03-18 04:22:09'),
(61, 'Q$295677', 'KD5670', 'Id culpa beatae.', 'Porro harum error a dolorem culpa modi amet dolores autem aliquid quam illo necessitatibus perspiciatis non error est minus sit sint omnis temporibus voluptate saepe dicta et qui facilis ad ipsum est qui consectetur sit et at itaque est sint praesentium et harum saepe officiis expedita veritatis ea aperiam praesentium tempora illo amet officia saepe aut distinctio sit et blanditiis iusto quae.', 5, 'dus', '0', '67000', 3, 3, 'img5636.jpg', '2022-03-18 04:22:09'),
(62, 'Q$686243', 'KD8314', 'Voluptatem iure.', 'Nemo autem est eaque voluptatem dolorem fugiat qui officia corporis earum quo quo tempora eveniet in exercitationem dolor alias et neque in ratione et porro eligendi adipisci consequatur doloremque optio veniam perspiciatis ut ut accusamus voluptates molestias harum asperiores est debitis enim ut quidem.', 4, 'biji', '95000', '44000', 3, 2, 'img7069.jpg', '2022-03-18 04:22:09'),
(63, 'Q$984335', 'KD2551', 'Sunt explicabo id.', 'Ut sit perferendis atque saepe ex rerum rerum rerum pariatur voluptatem et aut exercitationem temporibus rerum molestiae vel aut harum esse dolorem et illo nulla perspiciatis ipsa ut perferendis magni distinctio quasi occaecati iste ipsum sunt ut consequatur nesciunt optio in eos quaerat velit minus commodi rerum quibusdam veritatis.', 0, 'pack', '60000', '91000', 2, 3, 'img8708.jpg', '2022-03-18 04:22:09'),
(64, 'Q$496869', 'KD1288', 'Quis non.', 'Vero sed non et est porro consequatur aspernatur debitis consequatur rerum quo vel eum laborum voluptatum iste odio aliquam rerum dicta id pariatur et dolorum et praesentium dolores possimus aut quia maiores error impedit quidem animi odit dignissimos ut accusantium vitae harum possimus et laborum facilis et doloribus est non error commodi consequatur tempora et itaque ab eum.', 5, 'biji', '20000', '26000', 2, 2, 'img8518.jpg', '2022-03-18 04:22:09'),
(65, 'Q$702605', 'KD9599', 'Dolore facere doloribus.', 'Aut enim esse corrupti eligendi quas molestias quo aut recusandae praesentium ea voluptate qui earum hic dolor sed officia aut quae culpa omnis perspiciatis adipisci modi itaque fugit in ex libero mollitia qui nulla enim laboriosam eos sit accusamus nemo animi consequatur.', 7, 'dus', '70000', '45000', 3, 2, 'img7512.jpg', '2022-03-18 04:22:09'),
(66, 'Q$424148', 'KD0882', 'Et sequi quo.', 'Ipsam atque sed iure vel ex qui asperiores voluptates suscipit incidunt sunt qui facilis aut est consequuntur odit sint id rerum aspernatur soluta dolor dolorem ut nobis voluptate est voluptatum fugiat quis sit aperiam quo est et.', 4, 'biji', '75000', '3000', 1, 3, 'img6105.jpg', '2022-03-18 04:22:09'),
(67, 'Q$231328', 'KD7410', 'Perspiciatis magnam illo.', 'Voluptatem reiciendis nihil eum magni dolores sequi qui earum assumenda voluptas illum neque itaque omnis ab autem aut ad saepe unde deleniti eveniet facere sit explicabo cum esse impedit minima iure.', 1, 'biji', '36000', '45000', 1, 2, 'img4489.jpg', '2022-03-18 04:22:09'),
(68, 'Q$976487', 'KD2990', 'Vero blanditiis officia.', 'Possimus soluta et ipsa sequi ea beatae rerum et facere a optio fugit suscipit modi enim eveniet vero delectus aut quas quos pariatur non eius sit consequuntur et ratione labore non adipisci provident dolorem magnam qui consequatur officia.', 9, 'dus', '86000', '77000', 2, 3, 'img2862.jpg', '2022-03-18 04:22:09'),
(69, 'Q$586021', 'KD4965', 'Nulla sit maxime.', 'Maiores incidunt facilis necessitatibus quas nulla eum blanditiis iure facere architecto ut voluptatem nulla voluptas quisquam omnis ut tempora porro cumque amet quia et qui veritatis est nam nihil ex nobis aut harum tempore et sit earum voluptatem perspiciatis ipsa quia consequatur perferendis ut harum optio asperiores repellat dolores voluptatem voluptatem voluptas minus laboriosam et at et vero quod quaerat debitis est totam dolorem libero at qui.', 7, 'pack', '18000', '51000', 2, 2, 'img2585.jpg', '2022-03-18 04:22:09'),
(70, 'Q$684289', 'KD5139', 'Occaecati eos.', 'Et voluptatem perferendis sit quisquam dolor omnis dolor voluptate quia aut officiis consequuntur non fuga et ipsa accusantium aut vero autem labore et et iusto sint nesciunt vel corporis id saepe nihil.', 2, 'pack', '17000', '17000', 1, 2, 'img8646.jpg', '2022-03-18 04:22:09'),
(71, 'Q$690762', 'KD5026', 'Ea quis.', 'Distinctio unde ratione harum voluptate sed voluptates dolorem sed consequatur repellendus dolor quia quod ab eum quas enim rerum qui esse excepturi vitae quia consequuntur ipsa corrupti inventore optio impedit tenetur blanditiis quas enim dolorem provident qui nostrum nam.', 9, 'dus', '54000', '17000', 2, 2, 'img4638.jpg', '2022-03-18 04:22:09'),
(72, 'Q$490655', 'KD4726', 'Blanditiis mollitia accusamus.', 'Voluptas asperiores ipsa cumque tempore facilis quos eos consectetur quisquam error numquam fugit sed velit autem praesentium quam rerum vitae nihil voluptatem architecto quia eum et ducimus accusamus in et iure et numquam et et.', 7, 'dus', '32000', '84000', 3, 1, 'img9578.jpg', '2022-03-18 04:22:09'),
(73, 'Q$039538', 'KD9773', 'Enim excepturi odio.', 'Aut quibusdam voluptatem quia id fugit possimus et quo cum distinctio deleniti nihil quam qui veniam dolor neque a sed vero natus velit sunt molestias ea facere nihil perferendis mollitia magnam non et culpa eum itaque est eos reiciendis ex exercitationem non voluptas delectus maxime eveniet dolores nostrum officia culpa sapiente eum temporibus cupiditate cupiditate non ad sed assumenda repudiandae odio et omnis rerum non voluptas.', 9, 'biji', '45000', '56000', 2, 1, 'img0028.jpg', '2022-03-18 04:22:09'),
(74, 'Q$095645', 'KD4836', 'Ut animi.', 'Et sit nulla unde cum occaecati necessitatibus iusto velit ullam consequatur eligendi repudiandae nobis illo voluptatem magnam veritatis placeat fuga nam et qui a dignissimos rem ut in suscipit ut odit voluptatem esse quas esse cumque fuga suscipit quo magni at in animi amet doloremque enim est est qui soluta doloribus provident cum repudiandae dolorem et rerum ducimus recusandae qui.', 0, 'biji', '30000', '61000', 3, 3, 'img2606.jpg', '2022-03-18 04:22:09'),
(75, 'Q$917835', 'KD8549', 'Fuga tempora.', 'Excepturi quod earum odio temporibus rerum consequatur ut blanditiis consequatur vero sit maiores aut et voluptate quibusdam in voluptas ut sunt quod perspiciatis pariatur in vitae sint ea debitis incidunt reiciendis iusto omnis veritatis omnis nesciunt repellat delectus repellendus qui distinctio nihil doloremque molestiae veritatis quasi.', 4, 'pack', '45000', '15000', 3, 2, 'img1381.jpg', '2022-03-18 04:22:09'),
(76, 'Q$079478', 'KD0417', 'Praesentium sint consequatur.', 'Sequi sit aperiam minima quia nisi exercitationem culpa velit iste non et omnis consequatur voluptatibus cupiditate quidem ratione quia qui earum adipisci consequatur accusantium enim vitae hic nostrum nam temporibus ad dignissimos nemo repudiandae optio iste temporibus est quibusdam ut consectetur minus odit reprehenderit ut distinctio iure quis dolorem dolore eos iste doloremque ea voluptates.', 9, 'biji', '57000', '24000', 2, 1, 'img6521.jpg', '2022-03-18 04:22:09'),
(77, 'Q$872644', 'KD3374', 'Possimus expedita.', 'Eius eos suscipit qui natus hic error maxime nemo sapiente sint deserunt modi temporibus numquam facere necessitatibus expedita quo iusto fugit explicabo accusamus corrupti nisi aliquid ipsum ut at cum ad maxime fugit consequuntur illo perspiciatis temporibus quisquam magni minus qui aut molestiae.', 4, 'pack', '47000', '82000', 1, 3, 'img9214.jpg', '2022-03-18 04:22:09'),
(78, 'Q$143203', 'KD4261', 'Doloremque dolorem.', 'Itaque et vel et delectus eum natus at assumenda sint perspiciatis nobis fugiat sequi veniam rerum culpa soluta et aut fugiat voluptatibus magni et ut sit et ut quo sint molestiae ducimus ut perspiciatis harum dolorem architecto quis veniam optio quam rerum blanditiis.', 0, 'pack', '2000', '68000', 1, 1, 'img7858.jpg', '2022-03-18 04:22:09'),
(79, 'Q$547084', 'KD2078', 'Vel possimus est.', 'Deleniti quia eum quaerat optio labore ut harum et nemo sed minus quam dolore sit eum est eius ut amet officia temporibus aut et tempora in et aut corporis placeat sunt.', 6, 'biji', '96000', '13000', 1, 2, 'img6964.jpg', '2022-03-18 04:22:09'),
(80, 'Q$878751', 'KD6073', 'Veniam facilis.', 'Aspernatur aut ut consectetur enim doloremque fuga dolorum qui in fugiat provident nesciunt voluptatem provident neque voluptates quia cum ea quod est facilis provident itaque quo rerum cupiditate repudiandae consectetur quo qui eveniet aliquid molestiae placeat nam nemo laboriosam unde sit rerum nihil ut quidem molestiae inventore ab voluptas qui excepturi iusto rerum sint non praesentium aliquam maiores eum dicta.', 9, 'dus', '7000', '8000', 2, 3, 'img7238.jpg', '2022-03-18 04:22:09'),
(81, 'Q$432216', 'KD6568', 'Dolor ipsum dolores.', 'Dolor maxime voluptate voluptates voluptate accusamus quod mollitia quibusdam est aut corporis est ducimus et suscipit dignissimos adipisci eos est sed at error accusamus adipisci ut ratione reiciendis quasi assumenda nihil et vel ipsam nesciunt rerum praesentium ut et eligendi laboriosam tempora quia aut sed nesciunt numquam dolorem vel ut harum.', 3, 'dus', '2000', '57000', 2, 3, 'img9957.jpg', '2022-03-18 04:22:09'),
(82, 'Q$878726', 'KD4724', 'Voluptatem et quo.', 'Dolor sit dolorem consequatur eveniet earum ipsa velit vitae culpa eligendi suscipit iure eveniet qui nihil aut ipsa eveniet rerum modi doloribus voluptatum corrupti consequatur consequatur molestiae et fuga aut aut veritatis soluta tempore nostrum cupiditate repudiandae dolorum minus quis occaecati earum omnis qui at sunt eius sapiente nostrum est odio omnis et in sit ipsam quidem ratione numquam sed pariatur praesentium architecto consequatur excepturi est.', 3, 'biji', '10000', '78000', 3, 1, 'img3085.jpg', '2022-03-18 04:22:09'),
(83, 'Q$550065', 'KD6442', 'Praesentium unde qui.', 'Qui ullam quia et accusantium minima et tempora consequuntur ut totam quia alias dolorem voluptates voluptatibus voluptas id eos perferendis alias autem qui ipsam est dolor earum sapiente est exercitationem iste a neque unde dolor perferendis debitis ratione omnis repudiandae.', 2, 'biji', '46000', '12000', 3, 2, 'img0917.jpg', '2022-03-18 04:22:09'),
(84, 'Q$078293', 'KD7425', 'Explicabo asperiores sed.', 'Quas similique quisquam occaecati qui tenetur vitae nobis mollitia sapiente dolore a vero occaecati voluptatem amet explicabo vel possimus ea assumenda vitae molestias in delectus similique velit nulla itaque aliquam et corporis corrupti laudantium non hic voluptatibus distinctio vero qui nihil animi dolores sunt dolores et ut.', 4, 'pack', '98000', '8000', 2, 2, 'img8878.jpg', '2022-03-18 04:22:09'),
(85, 'Q$463069', 'KD9873', 'Natus veniam.', 'Ad ipsum excepturi soluta voluptatem magni ab ipsum et voluptatem saepe quo commodi eos consectetur ab quo quia necessitatibus odit ipsum aut repellendus animi voluptatem non animi velit velit quibusdam minus impedit voluptas explicabo nihil minus sint distinctio sint est aspernatur et amet debitis adipisci voluptatibus odit et asperiores velit autem ut et in rerum quos aliquid dignissimos dolor eius eum ad dolores ut.', 9, 'biji', '11000', '54000', 1, 2, 'img2928.jpg', '2022-03-18 04:22:09'),
(86, 'Q$327812', 'KD0495', 'Quaerat eos.', 'Explicabo dolor qui iusto hic maiores rem et accusamus quia praesentium voluptatem quo sapiente voluptas omnis hic est saepe quo voluptas et sed quidem repellendus non qui consectetur non qui tempore enim neque at dicta dolorum ut consequatur ipsa laudantium facere quo aut numquam.', 2, 'pack', '58000', '14000', 2, 3, 'img0999.jpg', '2022-03-18 04:22:09'),
(87, 'Q$445844', 'KD6357', 'Qui vero recusandae.', 'Harum sunt dolorem est expedita sit nesciunt eum consequuntur ut quia officia odit tenetur et error qui voluptates consequuntur sit molestiae porro perferendis harum in incidunt quae qui et rem in ut facere expedita est.', 0, 'pack', '41000', '40000', 3, 3, 'img5511.jpg', '2022-03-18 04:22:09'),
(88, 'Q$120299', 'KD8915', 'Suscipit in qui.', 'Iure sit vel dolor occaecati nisi sapiente eveniet provident neque atque ullam sint sed totam id iste dolor ab labore nam culpa neque veniam nihil laudantium nam accusantium eos ea est neque corrupti saepe non aut odio deleniti dicta placeat labore similique cupiditate neque quas debitis iste nam asperiores aut minima voluptatum dignissimos et itaque nihil illo esse hic ut.', 1, 'dus', '23000', '30000', 1, 3, 'img1253.jpg', '2022-03-18 04:22:09'),
(89, 'Q$472681', 'KD7310', 'Incidunt corporis.', 'Aut labore porro quis excepturi molestiae dolorem vel animi qui rem itaque quia ut hic aut voluptas et exercitationem qui sunt eos ut velit quo neque possimus et accusantium eius sapiente nesciunt repudiandae impedit odit ut quis eaque magnam ullam totam facere aut quas nulla distinctio sequi ipsam laudantium aut dolor sunt nisi et ab distinctio nihil id quis.', 6, 'dus', '35000', '46000', 3, 2, 'img7133.jpg', '2022-03-18 04:22:09'),
(90, 'Q$914303', 'KD5501', 'Quae officiis itaque.', 'Aperiam corporis rerum neque quo sapiente aut totam explicabo repellat vel atque unde quisquam nobis omnis reiciendis necessitatibus eos architecto in perspiciatis fugit magnam voluptates delectus ut dolorem corrupti enim quae libero quas eaque qui aspernatur magni accusantium eius dolores facere repellendus qui et qui voluptatibus ut.', 9, 'biji', '54000', '26000', 1, 1, 'img9213.jpg', '2022-03-18 04:22:09'),
(91, 'Q$978265', 'KD4648', 'Quidem asperiores.', 'Mollitia aut sed incidunt et atque repudiandae iste tempora et aliquam delectus aspernatur soluta corrupti et odit ab aut sunt aut aliquam nam pariatur commodi itaque laborum qui possimus repudiandae totam earum eveniet veritatis ex et incidunt nisi qui fugiat eveniet omnis in quaerat eaque ipsum aliquam eaque quos et repellendus sunt ea velit autem autem labore nostrum esse et omnis nihil quia laudantium.', 8, 'biji', '56000', '57000', 2, 2, 'img8733.jpg', '2022-03-18 04:22:09'),
(92, 'Q$171573', 'KD6850', 'Nostrum distinctio accusantium.', 'Sunt nulla et maiores optio omnis ut voluptate aut aut ut in hic ut inventore occaecati et consequatur neque fuga est corporis voluptatem tempore nihil est ut harum iusto architecto veritatis temporibus ab aliquam.', 4, 'pack', '11000', '15000', 3, 3, 'img1677.jpg', '2022-03-18 04:22:09'),
(93, 'Q$668624', 'KD4845', 'Consequuntur voluptas suscipit.', 'Cumque sit fugiat libero quo molestias et ipsum vero occaecati ullam inventore pariatur quasi enim voluptatum maxime sint culpa ut voluptatem aut reiciendis libero explicabo accusantium optio architecto recusandae minima voluptatem id qui ut id necessitatibus magni omnis deserunt sit nemo sunt ut soluta consequatur perferendis enim quae minima quia libero asperiores ullam ratione quia vel incidunt sed sit labore voluptatibus voluptatem aperiam deleniti inventore dolorem aperiam omnis.', 3, 'pack', '55000', '5000', 2, 2, 'img0512.jpg', '2022-03-18 04:22:09'),
(94, 'Q$463949', 'KD8365', 'Et eveniet.', 'Nesciunt tempore quas distinctio nostrum ab id accusamus et porro qui libero distinctio maiores et eum temporibus quia esse optio iste ut placeat nostrum aliquam non nobis et tenetur itaque et sed inventore repudiandae cum pariatur aspernatur consectetur ea quia aperiam in consequuntur aut et.', 3, 'biji', '38000', '48000', 3, 1, 'img1953.jpg', '2022-03-18 04:22:09'),
(95, 'Q$010928', 'KD9181', 'Iusto provident.', 'Similique quis labore ea perferendis sint iusto dolorum sed consequuntur eos placeat eveniet delectus velit aut voluptas magni et neque explicabo ad omnis facere eum minima est sequi consectetur asperiores quam similique itaque nisi earum est id numquam mollitia dolor natus ab ducimus odio et distinctio.', 3, 'dus', '0', '35000', 1, 1, 'img2161.jpg', '2022-03-18 04:22:09'),
(96, 'Q$432723', 'KD0322', 'Atque quaerat.', 'In quasi molestias rerum illum quo quod et corrupti est ratione accusantium vel labore placeat autem id non porro dolores cupiditate porro illum rerum aut nihil debitis id eos pariatur voluptatibus nihil necessitatibus qui quam itaque dolor consectetur ea nisi aut atque iste veritatis mollitia sequi magnam eaque est tenetur aut placeat vel rerum corrupti ad aliquid illum nobis consequatur deleniti.', 0, 'biji', '64000', '26000', 3, 2, 'img3276.jpg', '2022-03-18 04:22:09'),
(97, 'Q$493557', 'KD7351', 'Ullam quisquam et.', 'Molestiae aperiam modi aut suscipit quibusdam occaecati doloribus porro unde eius ullam earum non quae voluptatibus similique voluptatem enim illo quibusdam eos perspiciatis facere maiores omnis dolores nisi et debitis dolores soluta omnis nihil in ducimus temporibus eum nisi nam itaque dolore quia optio ut amet ut repellendus et qui quam vel libero magnam dolores possimus est quo exercitationem repellat nesciunt non dignissimos ad.', 4, 'biji', '15000', '24000', 2, 1, 'img5086.jpg', '2022-03-18 04:22:09'),
(98, 'Q$678589', 'KD5804', 'Voluptatum accusamus dolores.', 'Non est odit quod qui consectetur quibusdam minima beatae sint omnis maiores officia temporibus ut sed libero sequi animi rerum non optio aut nam iusto harum eveniet cupiditate totam assumenda quo sit odio dicta sint quam eaque quod nam voluptatem in aut aut sit velit laudantium modi et voluptatem voluptas aut ab animi corrupti perferendis repudiandae.', 8, 'biji', '26000', '60000', 1, 3, 'img2907.jpg', '2022-03-18 04:22:09'),
(99, 'Q$781235', 'KD6204', 'Consequuntur deserunt voluptatibus.', 'Et molestias incidunt voluptas est tenetur quo expedita maxime consequuntur odit molestias est eos reprehenderit tempore ipsam molestias nulla consequatur corporis quod saepe enim quibusdam laboriosam dolore tempora vel sequi enim in pariatur officiis quis iusto veritatis est laudantium et.', 0, 'biji', '0', '65000', 2, 3, 'img2563.jpg', '2022-03-18 04:22:09'),
(100, 'Q$536770', 'KD3096', 'Quo error ut.', 'Maxime magni et consequatur voluptatibus accusamus molestiae ut quia veritatis tempora et et eos recusandae inventore dolorem laborum amet maxime dignissimos nisi rerum magni eius eum ratione qui enim ratione corrupti qui voluptatem officia voluptas ut laudantium quae dolorum aut possimus molestias est et consequatur qui iure et voluptas laudantium ullam.', 5, 'biji', '90000', '57000', 2, 1, 'img1042.jpg', '2022-03-18 04:22:09'),
(101, 'Q$747085', 'KD8590', 'Repellat expedita amet.', 'Sequi ratione voluptatem expedita doloribus laboriosam odio inventore mollitia perferendis non veniam sed eos voluptatem sed enim id aut aut sint et officiis sed similique quam odit recusandae ipsam hic voluptate itaque non neque rerum eos recusandae minus quo illum ducimus.', 2, 'biji', '48000', '50000', 2, 1, 'img8491.jpg', '2022-03-18 04:22:09'),
(102, 'Q$131638', 'KD4935', 'Ut et.', 'Et veniam autem repudiandae vel rerum nihil ut eius harum voluptas rerum molestias doloribus enim quaerat voluptate deleniti reprehenderit voluptas quidem exercitationem quia ut facere qui recusandae quae commodi dolores quis eum et consequatur quae et officia dolorum sed quia.', 2, 'pack', '38000', '87000', 1, 2, 'img7924.jpg', '2022-03-18 04:22:09'),
(103, 'Q$716173', 'KD7822', 'Rerum officia aliquid.', 'Consequuntur sapiente vel quo est repellat natus dolor architecto alias necessitatibus enim dolores deserunt libero voluptatem corporis natus animi ut quam corporis cumque enim omnis deserunt earum autem fugiat necessitatibus earum ea eum tenetur voluptatem nihil soluta voluptates aliquam voluptatem et quos numquam consectetur repellat est aliquid itaque ex aperiam sint molestiae ipsa ut accusantium rem recusandae dignissimos quos.', 0, 'pack', '99000', '92000', 1, 2, 'img1462.jpg', '2022-03-18 04:22:09');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`) VALUES
(1, 'makanan'),
(2, 'minuman'),
(3, 'elektronik'),
(4, 'bahan_pokok');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `perusahaan` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `penanggung_jawab` varchar(50) NOT NULL,
  `telepon` int(20) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `kode_barang` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nik` int(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `level` tinyint(5) NOT NULL,
  `active` tinyint(3) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `img` varchar(50) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nik`, `username`, `fullname`, `password`, `email`, `level`, `active`, `telepon`, `img`, `created_date`) VALUES
(1, 1703202201, 'administrator', 'Saya Administrator', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'admin@admin.com', 1, 1, '082208220822', 'default.jpg', '2022-03-17 06:59:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_barang` (`kode_barang`),
  ADD UNIQUE KEY `qr` (`qr`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nik` (`nik`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
