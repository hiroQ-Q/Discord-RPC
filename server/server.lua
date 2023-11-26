--開始最初
AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    print('----------------------------------')
    print()
    print(resourceName..'のリソースを開始中です!')
    print('バグなどがあれば連絡を!')
    print('x(twitter) | @hiroq_q_m')
    print('discord | hiroq_q')
    print()
    print('----------------------------------')
  end)

--開始後
AddEventHandler('onResourceStarting', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    print('----------------------------------')
    print()
    print(resourceName..'のリソースを開始しました!')
    print('バグなどがあれば連絡を!')
    print('x(twitter) | @hiroq_q_m')
    print('discord | hiroq_q')
    print()
    print('----------------------------------')
  end)

--停止後
AddEventHandler('onResourceStop', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
    print('----------------------------------')
    print()
    print(resourceName..'のリソースを停止しました!')
    print('バグなどがあれば連絡を!')
    print('x(twitter) | @hiroq_q_m')
    print('discord | hiroq_q')
    print()
    print('----------------------------------')
end)
  
