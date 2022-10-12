class Nguoi
    attr_accessor :hoTen_160, :tuoi_160, :queQuan_160, :maSoGV_160, :luongCung_160, :luongThuong_160, :tienPhat_160, :luongthucLinh_160

    def initialize(hoTen_160, tuoi_160, queQuan_160, maSoGV_160, luongCung_160, luongThuong_160, tienPhat_160, luongthucLinh_160)
      @hoTen_160 = hoTen_160
      @tuoi_160 = tuoi_160
      @queQuan_160 = queQuan_160
      @maSoGV_160 = maSoGV_160
      @luongCung_160 = luongCung_160
      @luongThuong_160 = luongThuong_160
      @tienPhat_160 = tienPhat_160
      @luongthucLinh_160 = luongthucLinh_160
    end
  
    def show
      puts "Ma so GV: #{@maSoGV_160} - Ho ten: #{@hoTen_160}"
      puts "Tuoi: #{@tuoi_160} - Que quan: #{@queQuan_160}"
      puts "Luong cung: #{luongCung_160} - Luong thuong: #{luongThuong_160}"
      puts "Tien phat: #{tienPhat_160} - Luong thuc nhan: #{@luongthucLinh_160}"
    end
  end
  class CBGB
    attr_accessor :listCB
  
    def initialize
      cb1 = Nguoi.new("Phan Hữu Tường", 23, "QN", "001", 1000000, 200000, 50000, 1150000)
      cb2 = Nguoi.new("Phương Nhi", 24, "DN", "002", 2000000, 200000, 50000, 2150000)
      cb3 = Nguoi.new("Hồ Tuấn", 25, "QN", "003", 3000000, 200000, 50000, 3150000)
      cb4 = Nguoi.new("ABC", 1, "1", "1", 1, 1, 1, 1)
  
      @listCB = [cb1, cb2, cb3, cb4]
    end
  
    def nhapThongTin
      print "Nhap ho ten: "
      ht_160 = gets.chomp
      print "Nhap ma so giao vien: "
      ma_160 = gets.chomp
      print "Nhap tuoi: "
      tuoi_160 = gets.chomp.to_i
      print "Nhap que quan: "
      que_160 = gets.chomp
      print "Nhap luong cung: "
      luongcung_160 = gets.chomp.to_f
      print "Nhap luong thuong: "
      luongthuong_160 = gets.chomp.to_f
      print "Nhap tien phat: "
      tienphat_160 = gets.chomp.to_f
  
      luongthuc_160 = luongcung_160 + luongthuong_160 - tienphat_160
  
      listCB.push(Nguoi.new(ht_160, tuoi_160, que_160, ma_160, luongcung_160, luongthuong_160, tienphat_160, luongthuc_160))
    end
  
    def themCanBo(n)
      puts "===== Them Giao Vien ====="
      for i in 1..n
        print "\nNhap giao vien thu ", i, "\n"
        nhapThongTin
      end
    end
  
    def xoaCanBo(ma)
      listCB.delete_if { |item| item.maSoGV_160.chomp.eql?ma }
      print "Đã xoá thành công!"
    end
  
    def show
      i = 1
      puts "DANH SACH CAN BO"
      listCB.each do |val|
        print i.to_s + ". "
        val.show
        puts "\n----------------"
        i += 1
      end
    end
  end
  
  QLCB = CBGB.new
  
  choose = 1
  while choose < 4 && choose > 0
  
    puts "\n1. Them giao vien"
    puts "2. Danh sach giao vien"
    puts "3. Xoa giao vien"
    puts "4. Thoat"
  
    print "Lua chon cua ban: "
    choose = gets.chomp.to_i
  
    system("cls")
  
    case choose
    when 1
      system("cls")
      print "So giao vien can them: "
      n = gets.chomp.to_i
      QLCB.themCanBo(n)
      QLCB.show
    when 2
      system("cls")
      QLCB.show
    when 3
      system("cls")
      print "Nhap ma so giao vien: "
      ma = gets.chomp
      QLCB.xoaCanBo(ma)
      QLCB.show
    end
  end