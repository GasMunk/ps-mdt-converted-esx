
CREATE TABLE IF NOT EXISTS `mdt_bolos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext NOT NULL,
  `plate` longtext NOT NULL,
  `owner` longtext NOT NULL,
  `individual` longtext NOT NULL,
  `detail` longtext NOT NULL,
  `tags` longtext NOT NULL,
  `gallery` longtext NOT NULL,
  `officers` longtext NOT NULL,
  `time` longtext NOT NULL,
  `author` longtext DEFAULT NULL,
  `type` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `mdt_bulletins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `info` longtext DEFAULT NULL,
  `time` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `mdt_dashmessage` (
  `message` longtext DEFAULT NULL,
  `time` longtext DEFAULT NULL,
  `author` longtext DEFAULT NULL,
  `profilepic` longtext DEFAULT NULL,
  `job` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `mdt_incidents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext NOT NULL,
  `information` longtext NOT NULL,
  `tags` longtext NOT NULL,
  `officers` longtext NOT NULL,
  `civilians` longtext NOT NULL,
  `evidence` longtext NOT NULL,
  `associated` longtext NOT NULL,
  `time` longtext NOT NULL,
  `author` longtext DEFAULT NULL,
  `type` longtext DEFAULT 'police',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `mdt_logs` (
  `log` longtext DEFAULT NULL,
  `time` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `mdt_missing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` longtext NOT NULL,
  `name` longtext NOT NULL,
  `date` longtext NOT NULL,
  `age` longtext NOT NULL,
  `lastseen` longtext NOT NULL,
  `image` longtext DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `mdt_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext DEFAULT NULL,
  `reporttype` longtext DEFAULT NULL,
  `author` longtext DEFAULT NULL,
  `detail` longtext DEFAULT NULL,
  `tags` longtext DEFAULT NULL,
  `gallery` longtext DEFAULT NULL,
  `officers` longtext DEFAULT NULL,
  `civilians` longtext DEFAULT NULL,
  `time` longtext DEFAULT NULL,
  `type` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `mdt_vehicleinfo` (
  `plate` varchar(50) NOT NULL DEFAULT '',
  `code5` longtext NOT NULL,
  `stolen` longtext NOT NULL,
  `info` longtext NOT NULL,
  `image` longtext NOT NULL,
  PRIMARY KEY (`plate`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `mdt_weapons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` longtext DEFAULT NULL,
  `serialnumber` longtext DEFAULT NULL,
  `image` longtext DEFAULT 'https://cdn.discordapp.com/attachments/770324167894761522/912602343164502096/not-found.jpg',
  `owner` longtext DEFAULT NULL,
  `brand` longtext DEFAULT 'Unknown',
  `type` longtext DEFAULT 'Unknown',
  `information` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
