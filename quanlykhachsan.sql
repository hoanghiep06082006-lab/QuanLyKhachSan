-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jul 07, 2026 at 01:56 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlykhachsan`
--

-- --------------------------------------------------------

--
-- Table structure for table `dat_phong`
--

CREATE TABLE `dat_phong` (
  `MaDatPhong` int(11) NOT NULL,
  `NgayDat` date DEFAULT NULL,
  `NgayNhanPhong` date DEFAULT NULL,
  `NgayTraPhong` date DEFAULT NULL,
  `TinhTrangDatPhong` varchar(50) DEFAULT NULL,
  `MaKH` int(11) DEFAULT NULL,
  `MaPhong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dat_phong`
--

INSERT INTO `dat_phong` (`MaDatPhong`, `NgayDat`, `NgayNhanPhong`, `NgayTraPhong`, `TinhTrangDatPhong`, `MaKH`, `MaPhong`) VALUES
(1, '2026-06-20', '2026-06-21', '2026-06-23', 'Đã xác nhận', 1, 2),
(2, '2026-06-18', '2026-06-19', '2026-06-21', 'Đang ở', 2, 3),
(3, '2026-06-25', '2026-06-26', '2026-06-28', 'Chờ nhận phòng', 3, 1),
(4, '2026-06-20', '2026-06-21', '2026-06-23', 'Đã xác nhận', 1, 2),
(5, '2026-06-18', '2026-06-19', '2026-06-21', 'Đang ở', 2, 3),
(6, '2026-06-25', '2026-06-26', '2026-06-28', 'Chờ nhận phòng', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dich_vu`
--

CREATE TABLE `dich_vu` (
  `MaDV` int(11) NOT NULL,
  `TenDV` varchar(100) DEFAULT NULL,
  `MoTa` text DEFAULT NULL,
  `Gia` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dich_vu`
--

INSERT INTO `dich_vu` (`MaDV`, `TenDV`, `MoTa`, `Gia`) VALUES
(1, 'Giặt ủi', 'Giặt quần áo', 50000.00),
(2, 'Spa', 'Massage thư giãn', 300000.00),
(3, 'Ăn sáng', 'Buffet sáng', 150000.00),
(4, 'Giặt ủi', 'Giặt quần áo', 50000.00),
(5, 'Spa', 'Massage thư giãn', 300000.00),
(6, 'Ăn sáng', 'Buffet sáng', 150000.00);

-- --------------------------------------------------------

--
-- Table structure for table `hoa_don`
--

CREATE TABLE `hoa_don` (
  `MaHD` int(11) NOT NULL,
  `TongTien` decimal(10,2) DEFAULT NULL,
  `NgayLapHoaDon` date DEFAULT NULL,
  `TrangThaiThanhToan` varchar(50) DEFAULT NULL,
  `MaDatPhong` int(11) DEFAULT NULL,
  `MaKH` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hoa_don`
--

INSERT INTO `hoa_don` (`MaHD`, `TongTien`, `NgayLapHoaDon`, `TrangThaiThanhToan`, `MaDatPhong`, `MaKH`) VALUES
(1, 1700000.00, '2026-06-23', 'Đã thanh toán', 1, 1),
(2, 1800000.00, '2026-06-21', 'Chưa thanh toán', 2, 2),
(3, 950000.00, '2026-06-28', 'Đã thanh toán', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `khach_hang`
--

CREATE TABLE `khach_hang` (
  `MaKH` int(11) NOT NULL,
  `HoTen` varchar(100) DEFAULT NULL,
  `DiaChi` varchar(200) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `SoDienThoai` varchar(15) DEFAULT NULL,
  `LichSuLuuTru` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khach_hang`
--

INSERT INTO `khach_hang` (`MaKH`, `HoTen`, `DiaChi`, `Email`, `SoDienThoai`, `LichSuLuuTru`) VALUES
(1, 'Nguyễn Văn An', 'TP.HCM', 'an@gmail.com', '0909000001', 'Đã lưu trú 2 lần'),
(2, 'Trần Thị Bình', 'Hà Nội', 'binh@gmail.com', '0909000002', 'Khách VIP'),
(3, 'Lê Minh Cường', 'Đà Nẵng', 'cuong@gmail.com', '0909000003', 'Khách mới'),
(4, 'Nguyễn Văn An', 'TP.HCM', 'an@gmail.com', '0909000001', 'Đã lưu trú 2 lần'),
(5, 'Trần Thị Bình', 'Hà Nội', 'binh@gmail.com', '0909000002', 'Khách VIP'),
(6, 'Lê Minh Cường', 'Đà Nẵng', 'cuong@gmail.com', '0909000003', 'Khách mới'),
(7, 'Nguyễn Văn An', 'TP.HCM', 'an@gmail.com', '0909000001', 'Đã lưu trú 2 lần'),
(8, 'Trần Thị Bình', 'Hà Nội', 'binh@gmail.com', '0909000002', 'Khách VIP'),
(9, 'Lê Minh Cường', 'Đà Nẵng', 'cuong@gmail.com', '0909000003', 'Khách mới'),
(10, 'Phạm Quốc Huy', 'Cần Thơ', 'huy@gmail.com', '0909000004', 'Khách doanh nhân'),
(11, 'Đỗ Minh Tâm', 'Huế', 'tam@gmail.com', '0909000005', 'Khách gia đình'),
(12, 'Võ Thảo Vy', 'Nha Trang', 'vy@gmail.com', '0909000006', 'Khách đặt online'),
(13, 'Bùi Đức Long', 'Hải Phòng', 'long@gmail.com', '0909000007', 'Khách đoàn'),
(14, 'Lý Thanh Hà', 'Bình Dương', 'ha@gmail.com', '0909000008', 'Khách thân thiết'),
(15, 'Ngô Hoàng Nam', 'Quảng Ninh', 'nam@gmail.com', '0909000009', 'Khách mới'),
(16, 'Trịnh Mai Anh', 'Đồng Nai', 'mai@gmail.com', '0909000010', 'Khách VIP');

-- --------------------------------------------------------

--
-- Table structure for table `nhan_vien`
--

CREATE TABLE `nhan_vien` (
  `MaNV` int(11) NOT NULL,
  `HoTen` varchar(100) DEFAULT NULL,
  `ChucVu` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `SoDienThoai` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nhan_vien`
--

INSERT INTO `nhan_vien` (`MaNV`, `HoTen`, `ChucVu`, `Email`, `SoDienThoai`) VALUES
(1, 'Nguyễn Văn Nam', 'Lễ tân', 'nam@gmail.com', '0911111111'),
(2, 'Trần Thu Hà', 'Quản lý', 'ha@gmail.com', '0922222222'),
(3, 'Lê Quốc Huy', 'Buồng phòng', 'huy@gmail.com', '0933333333'),
(4, 'Nguyễn Văn Nam', 'Lễ tân', 'nam@gmail.com', '0911111111'),
(5, 'Trần Thu Hà', 'Quản lý', 'ha@gmail.com', '0922222222'),
(6, 'Lê Quốc Huy', 'Buồng phòng', 'huy@gmail.com', '0933333333');

-- --------------------------------------------------------

--
-- Table structure for table `nhiem_vu`
--

CREATE TABLE `nhiem_vu` (
  `MaNhiemVu` int(11) NOT NULL,
  `TenNhiemVu` varchar(100) DEFAULT NULL,
  `MoTa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nhiem_vu`
--

INSERT INTO `nhiem_vu` (`MaNhiemVu`, `TenNhiemVu`, `MoTa`) VALUES
(1, 'Đón khách', 'Làm thủ tục nhận phòng'),
(2, 'Dọn phòng', 'Vệ sinh phòng'),
(3, 'Kiểm tra phòng', 'Kiểm tra trước khi giao phòng'),
(4, 'Đón khách', 'Làm thủ tục nhận phòng'),
(5, 'Dọn phòng', 'Vệ sinh phòng'),
(6, 'Kiểm tra phòng', 'Kiểm tra trước khi giao phòng');

-- --------------------------------------------------------

--
-- Table structure for table `phan_cong`
--

CREATE TABLE `phan_cong` (
  `MaNV` int(11) NOT NULL,
  `MaNhiemVu` int(11) NOT NULL,
  `NgayBatDau` date DEFAULT NULL,
  `NgayKetThuc` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phan_cong`
--

INSERT INTO `phan_cong` (`MaNV`, `MaNhiemVu`, `NgayBatDau`, `NgayKetThuc`) VALUES
(1, 1, '2026-06-20', '2026-06-21'),
(2, 3, '2026-06-20', '2026-06-22'),
(3, 2, '2026-06-20', '2026-06-23');

-- --------------------------------------------------------

--
-- Table structure for table `phong`
--

CREATE TABLE `phong` (
  `MaPhong` int(11) NOT NULL,
  `LoaiPhong` varchar(50) DEFAULT NULL,
  `TinhTrangPhong` varchar(50) DEFAULT NULL,
  `GiaPhong` decimal(10,2) DEFAULT NULL,
  `TienNghi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phong`
--

INSERT INTO `phong` (`MaPhong`, `LoaiPhong`, `TinhTrangPhong`, `GiaPhong`, `TienNghi`) VALUES
(1, 'Standard', 'Trống', 500000.00, 'Wifi, TV'),
(2, 'Deluxe', 'Đã đặt', 800000.00, 'Wifi, TV, Máy lạnh'),
(3, 'Suite', 'Đang sử dụng', 1500000.00, 'Wifi, TV, Máy lạnh, Bồn tắm'),
(4, 'Standard', 'Trống', 500000.00, 'Wifi, TV'),
(5, 'Deluxe', 'Đã đặt', 800000.00, 'Wifi, TV, Máy lạnh'),
(6, 'Suite', 'Đang sử dụng', 1500000.00, 'Wifi, TV, Máy lạnh, Bồn tắm');

-- --------------------------------------------------------

--
-- Table structure for table `su_dung_dich_vu`
--

CREATE TABLE `su_dung_dich_vu` (
  `MaKH` int(11) NOT NULL,
  `MaDV` int(11) NOT NULL,
  `NgaySuDung` date DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `su_dung_dich_vu`
--

INSERT INTO `su_dung_dich_vu` (`MaKH`, `MaDV`, `NgaySuDung`, `SoLuong`) VALUES
(1, 1, '2026-06-22', 2),
(2, 2, '2026-06-20', 1),
(3, 3, '2026-06-27', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dat_phong`
--
ALTER TABLE `dat_phong`
  ADD PRIMARY KEY (`MaDatPhong`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaPhong` (`MaPhong`);

--
-- Indexes for table `dich_vu`
--
ALTER TABLE `dich_vu`
  ADD PRIMARY KEY (`MaDV`);

--
-- Indexes for table `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `MaDatPhong` (`MaDatPhong`),
  ADD KEY `MaKH` (`MaKH`);

--
-- Indexes for table `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Indexes for table `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD PRIMARY KEY (`MaNV`);

--
-- Indexes for table `nhiem_vu`
--
ALTER TABLE `nhiem_vu`
  ADD PRIMARY KEY (`MaNhiemVu`);

--
-- Indexes for table `phan_cong`
--
ALTER TABLE `phan_cong`
  ADD PRIMARY KEY (`MaNV`,`MaNhiemVu`),
  ADD KEY `MaNhiemVu` (`MaNhiemVu`);

--
-- Indexes for table `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`MaPhong`);

--
-- Indexes for table `su_dung_dich_vu`
--
ALTER TABLE `su_dung_dich_vu`
  ADD PRIMARY KEY (`MaKH`,`MaDV`),
  ADD KEY `MaDV` (`MaDV`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dat_phong`
--
ALTER TABLE `dat_phong`
  MODIFY `MaDatPhong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dich_vu`
--
ALTER TABLE `dich_vu`
  MODIFY `MaDV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `MaKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `nhan_vien`
--
ALTER TABLE `nhan_vien`
  MODIFY `MaNV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nhiem_vu`
--
ALTER TABLE `nhiem_vu`
  MODIFY `MaNhiemVu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `phong`
--
ALTER TABLE `phong`
  MODIFY `MaPhong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dat_phong`
--
ALTER TABLE `dat_phong`
  ADD CONSTRAINT `dat_phong_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khach_hang` (`MaKH`),
  ADD CONSTRAINT `dat_phong_ibfk_2` FOREIGN KEY (`MaPhong`) REFERENCES `phong` (`MaPhong`);

--
-- Constraints for table `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD CONSTRAINT `hoa_don_ibfk_1` FOREIGN KEY (`MaDatPhong`) REFERENCES `dat_phong` (`MaDatPhong`),
  ADD CONSTRAINT `hoa_don_ibfk_2` FOREIGN KEY (`MaKH`) REFERENCES `khach_hang` (`MaKH`);

--
-- Constraints for table `phan_cong`
--
ALTER TABLE `phan_cong`
  ADD CONSTRAINT `phan_cong_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhan_vien` (`MaNV`),
  ADD CONSTRAINT `phan_cong_ibfk_2` FOREIGN KEY (`MaNhiemVu`) REFERENCES `nhiem_vu` (`MaNhiemVu`);

--
-- Constraints for table `su_dung_dich_vu`
--
ALTER TABLE `su_dung_dich_vu`
  ADD CONSTRAINT `su_dung_dich_vu_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khach_hang` (`MaKH`),
  ADD CONSTRAINT `su_dung_dich_vu_ibfk_2` FOREIGN KEY (`MaDV`) REFERENCES `dich_vu` (`MaDV`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
